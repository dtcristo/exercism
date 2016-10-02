module Pangram exposing (..)

import String
import Regex


isPangram : String -> Bool
isPangram string =
    let
        charList =
            String.foldr collectChars [] (normaliseString string)
    in
        if List.length charList == 26 then
            True
        else
            False


normaliseString : String -> String
normaliseString string =
    string |> String.toLower |> removeNonAlpha


removeNonAlpha : String -> String
removeNonAlpha string =
    Regex.replace Regex.All (Regex.regex "[^a-z]") (\_ -> "") string


collectChars : Char -> List Char -> List Char
collectChars char charList =
    if List.member char charList then
        charList
    else
        char :: charList
