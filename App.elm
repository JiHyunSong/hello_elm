-- https://www.elm-tutorial.org/ko/02-elm-arch/02-structure.html
module App exposing (..)

-- Html 모듈에서 Html 타입, div, text, program 함수를 임포트합니다.
import Html exposing (Html, div, text, program)


-- MODEL

-- App의 모델을 타입앨리어싱을 String으로 선언
type alias Model =
    String

-- init 은 앱의 초기 상태를 정하는 함수
init : ( Model, Cmd Msg ) -- Html.program은 (model, command) 튜플을 인자로 받는다.
init =
    ( "Hello", Cmd.none ) -- model은 초기 상태이며, 처음 전달할 커맨드이다. (TBD)

--Elm 아키텍쳐에서는, 모든 컴포넌트의 모델을 조합하여 트리 구조를 가진 단 하나의 상태로 보관합니다. 이 또한 뒤에서 설명합니다.


-- MESSAGES : 앱에서 각 컴포넌트에게 요청되는 것들
-- Expand 나 Collapse 라는 식으로 위젯을 펼치거나 숨기도록 하는 메시지를 만들 수 있다. 메시지는 유니언 타입을 사용한다. 하는일이 없어서 NoOp

type Msg
    = NoOp



-- VIEW : 앱의 모델을 전달받아 Html 엘리먼트를 만든다.


view : Model -> Html Msg -- Html Msg는 타입 시그내처다. Html element가 Msg 타입의 메시지를 생성할 수 있다.
view model =
    div []
        [ text model ]



-- UPDATE :  메시지가 발생할 때마다 Html.program 로부터 호출된다. 이 함수에서는 각 메시지에 대응해 갱신된 모델이나 커맨드를 리턴한다.


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none ) -- Nop 메시지에 대응해, 변경되지 않은 모델과 Cmd.none(커맨드 없음)을 리턴한다.



-- SUBSCRIPTIONS : 앱 외부로부터 전달되는 입력을 받기 위한 것 ex) 마우스 동작, 키보드 이벤트, 브라우저 주소 변경


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none    -- 처리하는게 없어서 Sub.none



-- MAIN : 최종적으로 Html.program 에서 모두를 묶고 html 엘리먼트를 리턴.
    -- program 함수는 위에서 작성한 init, view, update, subscriptions 함수를 전달받고 있다.


main : Program Never Model Msg
main =
    program
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }
