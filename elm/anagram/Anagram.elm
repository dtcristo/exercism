module Anagram exposing (detect)

import List
import String


detect : String -> List String -> List String
detect word =
    List.filter (notEquivalent word)
        >> List.filter (isAnagram word)


notEquivalent : String -> String -> Bool
notEquivalent a b =
    String.toLower a /= String.toLower b


isAnagram : String -> String -> Bool
isAnagram a b =
    sortChars a == sortChars b


sortChars : String -> List Char
sortChars =
    String.toLower
        >> String.toList
        >> List.sort
