module Bob exposing (..)

import String


type Message
    = Question
    | Yelling
    | Silence
    | Other


hey : String -> String
hey input =
    let
        message =
            classifyMessage input
    in
        case message of
            Question ->
                "Sure."

            Yelling ->
                "Whoa, chill out!"

            Silence ->
                "Fine. Be that way!"

            Other ->
                "Whatever."


classifyMessage : String -> Message
classifyMessage input =
    if isYelling input then
        Yelling
    else if isQuestion input then
        Question
    else if isSilence input then
        Silence
    else
        Other


isQuestion : String -> Bool
isQuestion input =
    input |> String.endsWith "?"


isYelling : String -> Bool
isYelling input =
    let
        upcase =
            String.toUpper input

        downcase =
            String.toLower input
    in
        upcase /= downcase && input == upcase


isSilence : String -> Bool
isSilence input =
    String.trim input == ""
