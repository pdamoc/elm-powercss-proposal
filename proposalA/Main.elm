module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (id, class, classList)
import Html.Events exposing (onClick)
import HeadHelpers exposing (updateCss)


-- MODEL


type alias Model =
    Bool


init : ( Model, Cmd Msg )
init =
    ( True, updateCss css1 )



-- UPDATE


type Msg
    = Toggle Bool


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Toggle isFirst ->
            let
                css =
                    if isFirst then
                        css1
                    else
                        css2
            in
                ( isFirst, updateCss css )



-- VIEW


view : Model -> Html Msg
view model =
    let
        out =
            div []
                [ div [ id "elm-css_" ]
                    [ div
                        [ id "elm-css_1_"
                        , classList [ ( "elm-css_select_", model ) ]
                        , onClick (Toggle True)
                        ]
                        [ text "Cascade A" ]
                    , div
                        [ id "elm-css_2_"
                        , classList [ ( "elm-css_select_", not model ) ]
                        , onClick (Toggle False)
                        ]
                        [ text "Cascade B" ]
                    ]
                , div [] boxes
                ]

        boxes =
            List.map (\i -> div [ class "elm-css-box_" ] [ text ("Elm CSS Box " ++ (toString i)) ]) (List.range 1 20)
    in
        out



-- CSS


css1 : String
css1 =
    """
body{display:block;margin:0;padding:2.5rem 2rem;background:#ddd;overflow-y:scroll;font-family:arial, helvetica, sans-serif;font-size:16px;color:#888}input{margin:.5rem;width:10rem;border:.125rem solid #ddd;border-radius:.5rem;outline:none;padding:.5rem;background:#888;font-size:1rem;color:#ddd}input:focus{border-color:#fff;background:#444;color:#fff}.pcss-_logo_{background-image:url(../img/pcss-25p-lt.png);background-size:cover;width:20.75rem;height:10.125rem}#pcss-_head_{position:fixed;z-index:1;top:0;left:0;right:0;height:2rem;box-shadow:rgba( 64, 32, 32, .5) 0 0 .5rem 0;padding:0;background:#eee}#elm-css_{position:fixed;z-index:1;top:0;right:0;box-shadow:rgba( 64, 32, 32, .5) 0 0 .5rem 0;border-color:#aaa;border-radius:0 0 0 1rem;border-style:solid;border-width:0 0 .125rem .125rem;padding:1rem;padding-top:.5rem;background:#eee;line-height:1.5rem}#elm-css_ div{margin:.25rem;padding:.25rem;border-radius:.25rem;cursor:pointer}#elm-css_ div.elm-css_select_{background:#888;color:#fff}.elm-css-box_{display:inline-block;opacity:1;box-sizing:border-box;position:relative;vertical-align:top;margin:1rem;box-shadow:rgba( 0, 0, 0, .5) 0 0 .25rem 0;border:.25rem solid #eee;border-radius:1rem;width:16rem;height:8rem;padding-top:1rem;background:#f85032;background:-moz-linear-gradient(left, #f85032 0%, #6d362d 100%);background:-webkit-linear-gradient(left, #f85032 0%, #6d362d 100%);background:linear-gradient(to bottom, #f85032 0%, #6d362d 100%);font-size:1.5rem;font-weight:800;color:#fff;text-align:center}
"""


css2 : String
css2 =
    """
body{display:block;margin:0;padding:2.5rem 2rem;background:#ddd;overflow-y:scroll;font-family:arial, helvetica, sans-serif;font-size:16px;color:#888}input{margin:.5rem;width:10rem;border:.125rem solid #ddd;border-radius:.5rem;outline:none;padding:.5rem;background:#888;font-size:1rem;color:#ddd}input:focus{border-color:#fff;background:#444;color:#fff}.pcss-_logo_{background-image:url(../img/pcss-25p-lt.png);background-size:cover;width:20.75rem;height:10.125rem}#pcss-_head_{position:fixed;z-index:1;top:0;left:0;right:0;height:2rem;box-shadow:rgba( 64, 32, 32, .5) 0 0 .5rem 0;padding:0;background:#eee}#elm-css_{position:fixed;z-index:1;top:0;right:0;box-shadow:rgba( 64, 32, 32, .5) 0 0 .5rem 0;border-color:#aaa;border-radius:0 0 0 1rem;border-style:solid;border-width:0 0 .125rem .125rem;padding:1rem;padding-top:.5rem;background:#eee;line-height:1.5rem}#elm-css_ div{margin:.25rem;padding:.25rem;border-radius:.25rem;cursor:pointer}#elm-css_ div.elm-css_select_{background:#888;color:#fff}.elm-css-box_{display:block;opacity:1;box-sizing:border-box;position:relative;vertical-align:top;margin:1rem;box-shadow:rgba( 64, 32, 32, .5) 0 0 .5rem 0;border:.25rem solid #eee;border-radius:1rem;height:8rem;padding-top:1rem;background:#4f9831;background:-moz-linear-gradient(left, #4f9831 0%, #eee 100%);background:-webkit-linear-gradient(left, #4f9831 0%, #eee 100%);background:linear-gradient(to bottom, #4f9831 0%, #eee 100%);font-size:2rem;font-weight:800;color:#fff;text-align:center;max-width:32rem}
"""



-- WIRING


main : Program Never Model Msg
main =
    Html.program
        { init = init
        , update = update
        , view = view
        , subscriptions = \_ -> Sub.none
        }
