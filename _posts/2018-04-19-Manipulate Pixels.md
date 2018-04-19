---
layout: post
title: 이미지 픽셀 수정하기
description: >
  서로 다른 방식으로 이미지의 픽셀을 수정해 보도록 한다.
tags: [processing]
---

# 이미지 픽셀 수정하기

본 포스트에서 소개할 두 소스코드는 반 고흐 작품 이미지(컬러)를 흑백 이미지로 변환하는 프로그램이다. 그러나 차이점이 존재하는데 이에 대해 살펴보도록 하겠다.

먼저 van.jpg 원본 이미지는 다음과 같다.

![]({{ site.baseurl }}/assets/img/processing/van.jpg)

소스코드 1

```java
size(256, 289);

PImage myImage = loadImage("van.jpg");
image(myImage, 0, 0, width, height);

loadPixels();

for(int i = 0; i < width * height; i++) {
  pixels[i] = color(red(pixels[i]));
}

updatePixels();
save("data/van_gray.jpg");
```

소스코드 1 실행 결과 소스코드 디렉터리에 van_gray.jpg 이미지 파일이 생성된다. van_gray.jpg는 흑백 이미지임을 확인할 수 있다.

![]({{ site.baseurl }}/assets/img/processing/van_gray.jpg)

소스코드 2

```java
size(256, 289);

PImage myImage = loadImage("van.jpg");
image(myImage, 0, 0, width, height);

myImage.loadPixels();

for(int i = 0; i < width * height; i++) {
  myImage.pixels[i] = color(red(myImage.pixels[i]));
}

myImage.updatePixels();
myImage.save("data/van_gray.jpg");
```

소스코드 2 실행 결과 소스코드 디렉터리에 van_gray.jpg 이미지 파일이 생성된다. 소스코드 1과 동일하게 van_gray.jpg는 흑백 이미지임을 확인할 수 있다.

![]({{ site.baseurl }}/assets/img/processing/van_gray.jpg)

그러나 소스코드 1과 소스코드 2는 display window에서 차이점을 보인다.

소스코드 1 실행 결과 display window

![]({{ site.baseurl }}/assets/img/processing/van_display1.png)

소스코드 2 실행 결과 display window

![]({{ site.baseurl }}/assets/img/processing/van_display2.png)

소스코드 1에서는 loadPixels()에 의해 display window의 픽셀값들이 pixels[]에 저장된다. 소스코드 1에서는 display window의 픽셀값을 수정했기 때문에 display window도 van_gray.jpg와 같이 흑백 이미지가 출력된 것이다.

반면 소스코드 2에서는 PImage 객체 myImage의 멤버를 이용한다. myImage.loadPixels()에 의해 myImage 이미지 픽셀값이 myImage.pixels[]에 저장된다. 소스코드 2에서는 display window의 픽셀값이 아니라 myImage의 픽셀값을 수정하였기 때문에 display window에는 원본 이미지가 출력된다.
