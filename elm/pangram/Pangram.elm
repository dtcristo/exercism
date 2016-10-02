module Pangram exposing (..)

import String
import Regex
import Set


isPangram : String -> Bool
isPangram =
    String.toLower
        >> removeNonAlpha
        >> String.foldr Set.insert Set.empty
        >> Set.size
        >> (==) 26


removeNonAlpha : String -> String
removeNonAlpha =
    Regex.replace Regex.All (Regex.regex "[^a-z]") (\_ -> "")
