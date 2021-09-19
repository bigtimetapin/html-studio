module Sub exposing (subs)

import Msg exposing (Msg)


subs : Sub Msg
subs =
    Sub.batch
        []
