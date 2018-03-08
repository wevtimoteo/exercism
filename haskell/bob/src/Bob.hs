module Bob (responseFor) where

import Data.Char (isUpper, isAlpha, isSpace)

responseFor :: String -> String
responseFor sentence
  | isNothing  = "Fine. Be that way!"
  | isShouting = "Whoa, chill out!"
  | isForcefulQuestion = "Calm down, I know what I'm doing!"
  | isQuestion = "Sure."
  | otherwise  = "Whatever."
  where areAllUpper   = all isUpper
        isQuestion    = last sentence == '?'
        isForcefulQuestion = areAllUpper (init sentence) && last sentence == '?'
        isShouting    = saysSomething sentence && areAllUpper (filter isAlpha sentence)
        saysSomething = any isAlpha
        isNothing     = all isSpace sentence
