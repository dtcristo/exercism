module Accumulate exposing (..)


accumulate : (a -> b) -> List a -> List b
accumulate fn list =
    case list of
        [] ->
            []

        head :: tail ->
            fn head :: (accumulate fn tail)
