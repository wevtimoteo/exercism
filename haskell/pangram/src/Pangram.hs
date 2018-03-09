module Pangram (isPangram) where

import Data.Char (isAlpha, toLower)

isPangram :: String -> Bool
isPangram text =
  let lowerText = map toLower text
      alphabet = ['a'..'z']
  in all (`elem` lowerText) alphabet
