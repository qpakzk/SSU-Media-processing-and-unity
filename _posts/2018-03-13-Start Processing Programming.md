---
layout: post
title: 프로세싱 프로그래밍 시작
description: >
  프로세싱 프로그래밍을 시작한다.
tags: [processing]
---

# 프로세싱 프로그래밍 시작

프로세싱 프로그래밍을 시작하도록 하겠다. Processing IDE에서 프로그래밍하여 원을 그려보도록 하겠다.

프로세싱은 프로세싱에서 정의한 타입, 함수, 변수, 상수가 존재한다. 해당 내용은 프로세싱 [레퍼런스 페이지](https://www.processing.org/reference/)를 통해 확인할 수 있다. 프로세싱에서 원을 그리기 위해서는 프로세싱에서 정의한 함수 ellipse()를 활용한다. 레퍼런스 페이지에서 ellipse()를 어떻게 사용하는지 알아보자.


Syntax : ellipse(a, b, c, d)

Parameters
* a	float: x-coordinate of the ellipse
* b	float: y-coordinate of the ellipse
* c	float: width of the ellipse by default
* d	float: height of the ellipse by default

원을 그리기 위해서는 a, b 파라미터로 (x, y) 좌표를 입력하고 c, d에 너비와 높이를 입력하면 된다.

```cpp
ellipse(50, 50, 50, 50);
```

결과는 다음과 같다.

![](/assets/img/processing/ellipse.png)

전체 사이즈는 설정하지 않으면 디폴트로 100px * 100px을 설정해준다. 전체 사이즈는 프로세싱 정의 함수 size()로 설정한다.

```cpp
size(200, 200);
ellipse(50, 50, 50, 50);
```

![](/assets/img/processing/ellipse2.png)

## 프로세싱 프로그래밍 두 가지 방식

프로세싱 프로그래밍에는 두 가지 방식이 있다. 바로 정적 모드(static mode)와 동적 모드(active mode)이다.

* 정적 모드 : 변하지 않는 정적인 결과 화면을 생성한다. 사용자의 입력에 반응하지 않는다. 앞선 설명에서 원 그리기 프로그래밍은 정적 모드이다.
* 동적 모드 : 사용자의 입력에 따라 화면을 출력한다. 동적 모드에서는 setup()과 draw()를 활용한다.
  * setup() : 프로그램이 처음 실행될 때 한 번 실행되는 함수이다. setup()에 초기 설정을 작성한다.
  * draw() : 화면에 무엇인가를 그리는 역할을 하는 함수로 프로세싱에서 계속적으로 자동 반복된다.

다음 포스트에서 동적모드로 프로그래밍한 예제를 살펴보도록 하겠다.
