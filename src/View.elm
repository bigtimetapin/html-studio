module View exposing (view)

import Html exposing (Html)
import Html.Attributes exposing (class, id, src, style, width)
import Html.Events exposing (onClick)
import Model exposing (Model)
import Msg exposing (Msg(..))


view : Model -> Html Msg
view _ =
    let
        body : Html Msg
        body =
            Html.div
                []
                [ node
                , button
                ]
    in
    hero body


node : Html Msg
node =
    Html.div
        [ id "html-studio-id"
        , class "html-studio-style has-orange"
        ]
        [ Html.div
            [ class "html-studio-spacing"
            ]
            reelIntro
        ]


reelIntro : List (Html msg)
reelIntro =
    [ Html.div
        [ class "has-font-1 has-off-white-text"
        ]
        [ Html.text "CDMX EP"
        ]
    , Html.div
        [ class "has-font-2 has-off-white-text"
        ]
        [ Html.text
            """
            INTERLUDE 1
            """
        ]
    , Html.div
        [ class "has-font-2 has-off-white-text"
        ]
        [ Html.text
            """
            DAY 02
            """
        ]
    , Html.div
        [ class "has-font-2 has-off-white-text"
        ]
        [ Html.text
            """
            DAY 01
            """
        ]
    , Html.div
        [ class "has-font-2 has-off-white-text"
        ]
        [ Html.text
            """
            INTERLUDE 2
            """
        ]
    , Html.div
        [ class "has-font-2 has-off-white-text"
        ]
        [ Html.text
            """
            DAY 03
            """
        ]
    , Html.img
        [ src "images/02_somos.png"
        , width 200
        , style "position" "relative"
        , style "right" "450px"
        ]
        []
    ]


button : Html Msg
button =
    Html.button
        [ class "button button-style"
        , onClick (SaveImg "1080_1920")
        ]
        [ Html.text "Download"
        ]


hero : Html Msg -> Html Msg
hero body =
    Html.section
        [ class "hero is-fullheight body-style"
        ]
        [ Html.div
            [ class "hero-head"
            ]
            [ header
            ]
        , Html.div
            [ class "hero-body container"
            ]
            [ body
            ]
        , Html.div
            [ class "hero-foot"
            ]
            [ footer
            ]
        ]


header : Html Msg
header =
    Html.nav
        [ class "level header-style"
        ]
        [ Html.div
            [ class "level-item"
            ]
            [ Html.div
                []
                [ Html.text "HTML Studio"
                ]
            ]
        ]


footer : Html Msg
footer =
    Html.footer
        [ class "footer-style"
        ]
        []
