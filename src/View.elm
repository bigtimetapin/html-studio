module View exposing (view)

import Html exposing (Html)
import Html.Attributes exposing (class, id)
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
    Html.div
        []
        [ hero body
        ]


node : Html Msg
node =
    Html.div
        [ id "html-studio-id"
        , class "html-studio-style"
        ]
        [ Html.text "Style this"
        ]


button : Html Msg
button =
    Html.button
        [ class "button"
        , onClick (SaveImg "hs")
        ]
        [ Html.text "Download"
        ]


hero : Html Msg -> Html Msg
hero body =
    Html.section
        [ class "hero is-fullheight"
        ]
        [ Html.div
            [ class "hero-head"
            ]
            [ header
            ]
        , Html.div
            [ class "hero-body"
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
        [ class "level has-background-white-bis"
        ]
        [ Html.div
            [ class "level-item"
            ]
            [ Html.div
                [ class "title is-family-secondary"
                ]
                [ Html.text "HTML Studio"
                ]
            ]
        ]


footer : Html Msg
footer =
    Html.footer
        [ class "footer has-background-white-ter"
        ]
        []
