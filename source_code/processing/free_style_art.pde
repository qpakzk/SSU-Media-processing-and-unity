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