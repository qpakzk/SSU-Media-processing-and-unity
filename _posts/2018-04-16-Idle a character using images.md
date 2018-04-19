---
layout: post
title: 이미지를 이용한 움직임 표현하기
description: >
  여러 장의 이미지를 이용하여 움직임을 표현해보도록 한다.
tags: [processing]
---

# 이미지를 이용한 움직임 표현하기

5장의 이미지를 업로드한 후 이미지들을 이용하여 움직이는 축구선수를 그려보도록 하겠다. 발로는 공을 움직이고 손으로는 항의를 하는 축구선수로 설정하였다.

5장의 이미지는 다음과 같다.

1.png

![]({{ site.baseurl }}/assets/img/processing/1.png)

2.png

![]({{ site.baseurl }}/assets/img/processing/2.png)

3.png

![]({{ site.baseurl }}/assets/img/processing/3.png)

4.png

![]({{ site.baseurl }}/assets/img/processing/4.png)

5.png

![]({{ site.baseurl }}/assets/img/processing/5.png)

참고로 이미지들은 data 디렉터리 안에 저장해야 한다.

소스코드는 다음과 같다.

```java
String[] imgs = {"1.png", "2.png", "3.png", "4.png", "5.png"};
int i;
int dir;
PImage[] img = new PImage[imgs.length];

void setup() {
  size(1000, 1000);
  i = 0;
  dir = 1;
  for(int j = 0; j < 5; j++)
    img[j] = loadImage(imgs[j]);
}

void draw() {
  background(255);
  imageMode(CENTER);
  image(img[i], width / 2, height / 2, width / 4, height / 2);
  i += dir;
  if(i == 0 || i == img.length - 1)
    dir *= -1;

  delay(100);

}
```

실행 결과는 다음과 같다.

![]({{ site.baseurl }}/assets/img/processing/football.gif)
