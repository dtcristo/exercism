module Raindrops exposing (..)

import String


raindrops : Int -> String
raindrops number =
    let
        plingPlangPlongs =
            addPling number ++ addPlang number ++ addPlong number
    in
        if String.isEmpty plingPlangPlongs then
            toString number
        else
            plingPlangPlongs


addPling : Int -> String
addPling number =
    if number % 3 == 0 then
        "Pling"
    else
        ""


addPlang : Int -> String
addPlang number =
    if number % 5 == 0 then
        "Plang"
    else
        ""


addPlong : Int -> String
addPlong number =
    if number % 7 == 0 then
        "Plong"
    else
        ""
