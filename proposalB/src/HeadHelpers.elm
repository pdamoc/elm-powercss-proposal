module HeadHelpers exposing (..)

import Native.HeadHelpers
import Html exposing (Html)


withStyle : String -> Html msg -> Html msg
withStyle =
    Native.HeadHelpers.withStyle
