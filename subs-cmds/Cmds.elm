-- https://www.elm-tutorial.org/ko/03-subs-cmds/02-commands.html
module Cmds exposing (..)

import Html exposing (Html, div, button, text, program)
import Html.Events exposing (onClick)
import Random


-- MODEL


type alias Model =
    Int


init : ( Model, Cmd Msg )
init =
    ( 1, Cmd.none )



-- MESSAGES


type Msg
    = Roll         -- Roll 는 새로운 수를 요청
    | OnResult Int -- OnResult 는 Random 라이브러리에서 생성한 수를 돌려받습니다.



-- VIEW


view : Model -> Html Msg
view model =
    div []
        [ button [ onClick Roll ] [ text "Roll" ]
        , text (toString model)
        ]



-- UPDATE


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Roll -> -- Random.generate 는 랜덤한 수를 생성하도록 요청하는 커맨드를 만듭니다. 첫 인자는 메시지 생성자인데, 우리 어플리케이션에 돌아오도록 하기 위한 것입니다. 이 경우는 OnResult 입니다.
            ( model, Random.generate OnResult (Random.int 1 6) )

        OnResult res ->
            ( res, Cmd.none )



-- MAIN


main : Program Never Model Msg
main =
    program
        { init = init
        , view = view
        , update = update
        , subscriptions = (always Sub.none)
        }