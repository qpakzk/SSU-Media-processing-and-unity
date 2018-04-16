---
layout: post
title: 인터렉션
description: >
  마우스와 키보드를 이용하여 사용자와 인터렉션하는 프로그램을 살펴본다.
tags: [processing]
---

# 인터렉션

마우스와 키보드를 이용하여 사용자와 인터렉션하는 프로그램을 살펴본다.

## 마우스

마우스 위치의 x 위치를 따라다니는 프로그램이다.

```cpp
void setup() {
  size(300, 200);
  stroke(255);
}

void draw() {
  background(128);
  line(mouseX - 20, height - 50, mouseX + 20, height - 50);
}
```

![]({{ site.baseurl }}/assets/img/processing/interaction1.png)

마우스를 따라다니는 원을 나타낸 프로그램이다.

```cpp
void setup() {
  size(512, 256);
  background(255);
  noStroke();
}

void draw() {
  fill(0, 50);
  ellipse(mouseX, mouseY, 50, 50);
}
```

![]({{ site.baseurl }}/assets/img/processing/interaction.png)

1차원 배열을 이용하여 건반을 나타낸 프로그램이다. 건반을 클릭하면 흰색은 검은색으로, 검은색은 흰색으로 바뀐다.

```cpp
int [] bricks = new int [10];

void setup() {
   int i;
   size(500, 200);
   for(i = 0; i < 10; i++) {
     bricks[i] = 1;
   }
}

void draw() {
  int i;
  background(0);

  for(i = 0; i < 10; i++) {
     if( bricks[i] == 1)
       fill(255);
      else
       fill(0);

       rect(i * 50, 0, 50, 200);
   }
}

void mousePressed() {
  if(bricks[mouseX / 50] == 1) {
    bricks[mouseX/50] = 0;
  }
  else if(bricks[mouseX / 50] == 0) {
    bricks[mouseX/50] = 1;
  }
}
```

![]({{ site.baseurl }}/assets/img/processing/interaction2.png)


2차원 배열을 이용하여 벽돌을 나타낸 프로그램이다. 건반 프로그램과 마찬가지로 벽돌을 클릭하면 흰색은 검은색으로, 검은색은 흰색으로 바뀐다.

```cpp
int [][] bricks = new int [5][10];

void setup() {
  int i, j;
  size(500, 250);
  for(i = 0; i < 5; i++) {
    for(j = 0; j < 10; j++) {
      bricks[i][j] = 1;
    }
  }
}

void draw() {
  int i, j;
  background(0);

  for(i = 0; i < 5; i++) {
    for(j = 0; j < 10; j++) {
      if(bricks[i][j] == 1) fill(255);
      else fill(0);

      rect(j*50, i* 50, 50, 50);
    }
  }
}

void mousePressed() {
  if( bricks[mouseY/50][mouseX/50] == 1)
    bricks[mouseY/50][mouseX/50] = 0;
  else if(bricks[mouseY/50][mouseX/50] == 0)
    bricks[mouseY/50][mouseX/50] = 1;
}
```

![]({{ site.baseurl }}/assets/img/processing/interaction3.png)
