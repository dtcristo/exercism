module Anagram exposing (detect)

import Dict exposing (Dict)
import List
import String


detect : String -> List String -> List String
detect word =
    List.filter (notEquivalent word)
        >> List.filter (matchesDict (charDict word))


notEquivalent : String -> String -> Bool
notEquivalent a b =
    String.toLower a /= String.toLower b


matchesDict : Dict Char Int -> String -> Bool
matchesDict dict word =
    dict == charDict word


charDict : String -> Dict Char Int
charDict word =
    String.foldl countChar Dict.empty (String.toLower word)


countChar : Char -> Dict Char Int -> Dict Char Int
countChar char =
    Dict.update char increment


increment : Maybe Int -> Maybe Int
increment maybe =
    case maybe of
        Just integer ->
            Just (integer + 1)

        Nothing ->
            Just 1
