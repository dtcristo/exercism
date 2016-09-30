module Leap exposing (..)


isLeapYear : Int -> Bool
isLeapYear year =
    if year % 4 == 0 then
        if year % 100 == 0 then
            if year % 400 == 0 then
                True
            else
                False
        else
            True
    else
        False
