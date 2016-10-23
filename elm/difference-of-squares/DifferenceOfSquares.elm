module DifferenceOfSquares exposing (squareOfSum, sumOfSquares, difference)


squareOfSum : Int -> Int
squareOfSum =
    toList >> sum >> square


sumOfSquares : Int -> Int
sumOfSquares =
    toList >> List.map square >> sum


difference : Int -> Int
difference n =
    squareOfSum n - sumOfSquares n


toList : Int -> List Int
toList n =
    [1..n]


sum : List Int -> Int
sum =
    List.foldl (+) 0


square : Int -> Int
square n =
    n ^ 2
