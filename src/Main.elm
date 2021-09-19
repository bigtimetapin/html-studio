module Main exposing (main)

import Browser
import Model
import Sub
import Update
import View



-- Main


main =
    Browser.element
        { init = Model.init
        , view = View.view
        , update = Update.update
        , subscriptions = \_ -> Sub.subs
        }
