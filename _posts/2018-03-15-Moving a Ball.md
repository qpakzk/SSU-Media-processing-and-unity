---
layout: post
title: Moving a Ball
description: >
  조건문을 활용하여 공을 제어해 보도록 한다.
tags: [processing]
---

# Moving Circle

흰 공이 오른쪽 벽에 부딪혔을 때 파란색 공으로 바뀌고 왼쪽 벽에 부딪혔을 때 빨간색 공으로 바뀌는 프로그램이다.

```cpp
int xPos, yPos, xDir;

void setup() {
  size(300, 200);
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
