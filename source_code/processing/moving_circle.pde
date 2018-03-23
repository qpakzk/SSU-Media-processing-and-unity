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