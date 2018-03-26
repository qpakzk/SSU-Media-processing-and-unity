---
layout: post
title: Free Style Art
description: >
  예술 작품을 그려보도록 하겠다.
tags: [processing]
---

# Free Style Art

processing에서 제공해주는 random() 함수를 활용하여 예술 작품을 그려보도록 하겠다.

```cpp
int count = 0;

void setup() {
  size(500, 500);
 background(0, 0, 0);
 stroke(255, 50);
}

void draw() {
  if(count % 10 == 0) {
    background(random(0, 255), random(0, 255), random(255));
    count = 0;
  }

  count++;
  line(random(0, width), random(0, height), random(0, width), random(0, height));

  fill(random(0, 255), random(0, 255), random(0, 255), random(0, 255));
  float diameter = random(0, width);
  ellipse(random(0, width), random(0, height), diameter, diameter);

  fill(random(0, 255), random(0, 255), random(0, 255), random(0, 255));
  rect(random(0, width), random(0, height), random(0, width), random(0, height));
}
```

결과는 다음과 같다. <br>

![](/assets/img/processing/free_style_art.gif)
