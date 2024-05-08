module Caesar (caesar) where

import Data.Alphabet.Alphabet (Alphabet, lower, upper)
import Data.Char (isLower, isUpper)

position :: Char -> Alphabet -> Int
position _ [] = undefined
position c (x : xs) = if x == c then 0 else 1 + position c xs

rotate :: Alphabet -> Int -> Char -> Char
rotate alphabet n ch =
  alphabet !! ((position ch alphabet + n) `mod` length alphabet)

rotChar :: Int -> Char -> Char
rotChar n c
  | isLower c = rotate lower n c
  | isUpper c = rotate upper n c
  | otherwise = c

caesar :: Int -> String -> String
caesar n = map (rotChar n)
