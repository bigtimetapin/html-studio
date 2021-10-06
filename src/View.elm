module View exposing (view)

import Html exposing (Html)
import Html.Attributes exposing (class, id, src, width)
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
        , class "html-studio-style has-hyper-blue"
        ]
        [ Html.div
            [ class "html-studio-spacing"
            ]
            [ Html.div
                [ class "has-font-2 has-off-white-text"
                ]
                [ Html.text
                    """
                    WE FILMED EVERYTHING
                    """
                ]
            , Html.div
                [ class "has-font-2 has-off-white-text"
                ]
                [ Html.text
                    """
                    FIRST REEL DROPS TOMORROW
                    """
                ]
            ]
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
            RECORDED IN 3 DAYS
            """
        ]
    , Html.div
        [ class "has-font-2 has-off-white-text"
        ]
        [ Html.text
            """
            ENTIRELY IMPROVISATIONAL
            """
        ]
    ]


button : Html Msg
button =
    Html.button
        [ class "button button-style"
        , onClick (SaveImg "slide")
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
