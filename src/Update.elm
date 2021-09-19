module Update exposing (update)

import Model exposing (Model)
import Msg exposing (Msg(..))
import Sub exposing (dom2ImageEventSender)


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        SaveImg title ->
            ( model, dom2ImageEventSender title )
