-- 모듈과 파일명 이름이 같은건 관례.  모듈이 어떤 함수와 타입을 외부에 노출할 지 지정합니다. 위 (..) 와 같은 경우는 전부입니다.
module Hello exposing (..)

import Html exposing (text)


main =
    text "Hello"
