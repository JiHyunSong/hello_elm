# 배울 것

```
여러 뷰
중첩된 컴포넌트
리소스의 분할
라우팅
어플리케이션에 걸친 상태 공유
레코드 읽기, 쓰기
Ajax 요청
```

# 환경설정

npm 기본 설정 만들기, 가상 API서버 만들기

```
npm init
npm i json-server@0.9 -S
```

가상 api서버 띄우기

```
node api.js
```

# Webpack

Elm reactor가 외부 자바스크립트와 연동하거나, 외부 CSS를 불러오는 기능을 지원하지않기에 사용

ref : https://www.elm-tutorial.org/ko/04-starting/03-webpack-1.html

Webpack 은 코드 번들러입니다. 코드의 의존관계를 살펴서 사용되는 부분만 묶습니다. Webpack 은 CSS 같은 리소스도 번들에 포함할 수 있습니다. Webpack 에 대해서는 [여기](https://webpack.github.io/)를 참조

Node JS 4 이상 필요

### Webpack package 관련 설치

webpack 버전 1.13 과 elm-webpack-loader 버전 4.1 

- CSS 를 위한 [Basscss](http://www.basscss.com/), ace-css npm 패키지에 일반적인 Basscss 스타일이 포함되어 있습니다.
- 아이콘을 위한 [FontAwesome](https://fortawesome.github.io/Font-Awesome/)

```
npm i webpack@1 webpack-dev-middleware@1 webpack-dev-server@1 elm-webpack-loader@4 file-loader@0 style-loader@0 css-loader@0 url-loader@0 -S
npm i ace-css@1 font-awesome@4 -S
```

#### webpack.config.js

devServer 키에는 Webpack dev 서버에 대한 내용이 있습니다. 이것이 Elm reactor 를 대신합니다.
entry 키의 ./src/index.js 는 이 어플리케이션의 시작점입니다.

# ref

만들 것 : https://www.elm-tutorial.org/ko/04-starting/01-planning.html
