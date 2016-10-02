module Triangle exposing (..)

import List


type Triangle
    = Equilateral
    | Isosceles
    | Scalene
    | Degenerate


triangleKind : number -> number -> number -> Result String Triangle
triangleKind a b c =
    if a <= 0 || b <= 0 || c <= 0 then
        Err "Invalid lengths"
    else if a == b && b == c && a == c then
        Ok Equilateral
    else
        case List.sort [ a, b, c ] of
            x :: y :: z :: [] ->
                if z > x + y then
                    Err "Violates inequality"
                else if x == y || y == z then
                    Ok Isosceles
                else
                    Ok Scalene

            _ ->
                Err "Invalid case"
