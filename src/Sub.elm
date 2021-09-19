port module Sub exposing (dom2ImageEventSender, subs)

import Msg exposing (Msg)


subs : Sub Msg
subs =
    Sub.batch
        []


port dom2ImageEventSender : String -> Cmd msg
