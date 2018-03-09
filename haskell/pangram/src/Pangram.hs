module Pangram (isPangram) where

import Data.Char (isAlpha, toLower)

isPangram :: String -> Bool
isPangram "" = False
isPangram text =
  let alphaLowerText = filter isAlpha (map toLower text)
      inAlphabet = [ x  `elem` alphaLowerText | x <- ['a'..'z'] ]
  in all (== True) inAlphabet
