module Bob exposing (..)

import String exposing (toUpper, toLower, endsWith, trim, isEmpty)

hey : String -> String
hey content = 
    let 
        isYelling content =
            toUpper content == content && toLower content /= content
    in
        if isYelling content then "Whoa, chill out!"
            else if content |> endsWith("?") then "Sure."
            else if content |> trim |> isEmpty then "Fine. Be that way!"
        else "Whatever."
