module Accumulate exposing (accumulate)


accumulate : (a -> b) -> List a -> List b
accumulate f =
    doAccumulate f []


doAccumulate : (a -> b) -> List b -> List a -> List b
doAccumulate f acc list =
    case list of
        [] ->
            acc

        head :: tail ->
            doAccumulate f (acc ++ [ f head ]) tail
