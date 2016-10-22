module Strain exposing (..)


keep : (a -> Bool) -> List a -> List a
keep f list =
    keep' f list []


keep' : (a -> Bool) -> List a -> List a -> List a
keep' f list acc =
    case list of
        [] ->
            acc

        x :: xs ->
            if (f x) then
                keep' f xs (acc ++ [ x ])
            else
                keep' f xs acc


discard : (a -> Bool) -> List a -> List a
discard f list =
    discard' f list []


discard' : (a -> Bool) -> List a -> List a -> List a
discard' f list acc =
    case list of
        [] ->
            acc

        x :: xs ->
            if (f x) then
                discard' f xs acc
            else
                discard' f xs (acc ++ [ x ])
