module Strain exposing (..)


keep : (a -> Bool) -> List a -> List a
keep f list =
    keep' f [] list


keep' : (a -> Bool) -> List a -> List a -> List a
keep' f acc list =
    case list of
        [] ->
            acc

        x :: xs ->
            if (f x) then
                keep' f (acc ++ [ x ]) xs
            else
                keep' f acc xs


discard : (a -> Bool) -> List a -> List a
discard f list =
    keep (f >> not) list
