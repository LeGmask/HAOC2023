module Day01 where

import Paths_aoc2023 (getDataFileName)

import Data.Char (digitToInt, isDigit)
import Text.Regex (mkRegex, subRegex)

parseString :: String -> String
parseString str = 
    flip (subRegex (mkRegex "one"))  "o1e"
    $ flip (subRegex (mkRegex "two"))  "t2o"
    $ flip (subRegex (mkRegex "three"))  "t3e"
    $ flip (subRegex (mkRegex "four"))  "f4r"
    $ flip (subRegex (mkRegex "five"))  "f5e"
    $ flip (subRegex (mkRegex "six"))  "s6x"
    $ flip (subRegex (mkRegex "seven"))  "s7n"
    $ flip (subRegex (mkRegex "eight"))  "e8t"
    $ subRegex (mkRegex "nine") str "n9e"
    

convertStringToNumbers :: [Char] -> Int
convertStringToNumbers str =
    10 * head num + last num 
    where num = map digitToInt $ filter isDigit $ parseString str


sumNumbers :: [Char] -> Int -> Int
sumNumbers str = (+ convertStringToNumbers str)

    

day01 :: IO ()
day01 = do
    content <- lines <$> (getDataFileName "day01.txt" >>= readFile)
    -- lines:: [String] <- lines content
    print $ foldr sumNumbers 0 content