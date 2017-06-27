## add library

```
elm package install elm-lang/mouse
elm package install elm-lang/keyboard
```

### subscription

외부 입력에 대응하는 것.

ex. 키보드,마우스,브라우저 주소변경, 웹소켓

### command

사이드 이펙트를 포함하는 어떤 동작

ex. 랜덤한 수 생성, http요청, 로컬 스토리지에 무언가를 저장.

```
Cmd 는 하나일 수도 있고 여럿의 묶음일 때도 있습니다. 우리는 외부에서 발생시킬 일들을 커맨드로 묶어 런타임에 전달하고 런타임은 외부에서 이를 실행하여 결과를 우리 어플리케이션에 돌려줍니다.
사실 Elm 과 같은 함수형 언어에서는 모든 결과를 리턴으로만 전달하고, 몇몇 언어에서 볼 수 있는 함수 내부에서의 사이드 이펙트의 유발은 허용하지 않으며 커맨드는 이런 동작을 처리하기 위한 것입니다. Elm 아키텍쳐에서, Html.program 은 이런 커맨드의 최종 수신자라고 볼 수 있습니다.
```

# ref

https://www.elm-tutorial.org/ko/03-subs-cmds/01-subs.html
https://www.elm-tutorial.org/ko/03-subs-cmds/02-commands.html
