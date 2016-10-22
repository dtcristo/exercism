module SpaceAge exposing (..)


type Planet
    = Mercury
    | Venus
    | Earth
    | Mars
    | Jupiter
    | Saturn
    | Uranus
    | Neptune


ageOn : Planet -> Int -> Float
ageOn planet seconds =
    let
        earthYear =
            31557600.0

        secondsFloat =
            toFloat (seconds)
    in
        case planet of
            Mercury ->
                secondsFloat / earthYear / 0.2408467

            Venus ->
                secondsFloat / earthYear / 0.61519726

            Earth ->
                secondsFloat / earthYear / 1.0

            Mars ->
                secondsFloat / earthYear / 1.8808158

            Jupiter ->
                secondsFloat / earthYear / 11.862615

            Saturn ->
                secondsFloat / earthYear / 29.447498

            Uranus ->
                secondsFloat / earthYear / 84.016846

            Neptune ->
                secondsFloat / earthYear / 164.79132
