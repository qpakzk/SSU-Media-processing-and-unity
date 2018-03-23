---
layout: post
title: Moving a Ball
description: >
  동적모드로 프로그래밍한 예제를 살펴보도록 하겠다.
tags: [processing]
---

# Moving Circle

흰 공이 오른쪽 벽에 부딪혔을 때 파란색 공으로 바뀌고 왼쪽 벽에 부딪혔을 때 빨간색 공으로 바뀌는 프로그램이다.

```cpp
int xPos, yPos, xDir;

void setup() {
  size(600, 200);
  xPos = 0;
  yPos = 10;
  xDir = 1;
}

void draw() {
  background(128);

  ellipse(xPos, yPos, 20, 20);
  xPos += xDir;


  if( xPos < 0 ) {
    xDir *= -1;
    fill(255, 0, 0);
  }

  if( xPos > width ) {
    fill(0, 0, 255);
    xDir *= -1;
  }
}
```

결과는 다음과 같다. <br>

<iframe width="560" height="315" src="https://www.youtube.com/embed/Nk0kIj912cQ" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
