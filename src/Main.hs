module Main where

import Day01 (day01)
import Day02 (day02)
import System.Environment (getArgs)

main :: IO ()
main = do
  args <- getArgs
  case args of
    "1" : _ -> day01
    -- "2" : _ -> day02
    -- "3" : _ -> day03
    -- "4" : _ -> day04
    -- "5" : _ -> day05
    -- "6" : _ -> day06
    -- "7" : _ -> day07
    -- "8" : _ -> day08
    -- "9" : _ -> day09
    -- "10" : _ -> day10
    -- "11" : _ -> day11
    -- "12" : _ -> day12
    -- "13" : _ -> day13
    -- "14" : _ -> day14
    -- "15" : _ -> day15
    -- "16" : _ -> day16
    -- "17" : _ -> day17
    -- "18" : _ -> day18
    -- "19" : _ -> day19
    -- "20" : _ -> day20
    -- "21" : _ -> day21
    -- "22" : _ -> day22
    -- "23" : _ -> day23
    -- "24" : _ -> day24
    _ -> error "None or invalid day number provided."
