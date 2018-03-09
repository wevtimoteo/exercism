module Bob (responseFor) where

import Data.Char (isUpper, isAlpha, isSpace)

responseFor :: String -> String
responseFor sentence
  | isNothing  = "Fine. Be that way!"
  | isForcefulQuestion = "Calm down, I know what I'm doing!"
  | isShouting = "Whoa, chill out!"
  | isShoutingGibberish = "Whoa, chill out!"
  | isQuestion = "Sure."
  | otherwise  = "Whatever."
  where areAllUpper   = all isUpper
        isQuestion    = last (filter (not . isSpace) sentence) == '?'
        isForcefulQuestion = isShouting && isQuestion
        isShouting    = saysSomething sentence && areAllUpper (filter isAlpha sentence)
        isShoutingGibberish = areAllUpper sentence
        saysSomething = any isAlpha
        isNothing     = all isSpace sentence
