module HeadHelpers exposing (..)

import Native.HeadHelpers


updateCss : String -> Cmd msg
updateCss =
    Native.HeadHelpers.updateCss
