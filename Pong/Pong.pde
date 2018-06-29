int x = 50;
int y = 50;
int speedX = 5;
int speedY = 5;

void setup() {
  size(1000, 800);
}

void draw() {
  background(1, 1, 1);
  fill(#FFFFFF);
  noStroke();
  ellipse(x, y, 25, 25);
  x += speedX;
  if (x > width) {
    speedX = -speedX;
  }
  y += speedY;
  if (y > height ) {
    speedY = -speedY;
  }
  rect(500, 800, 50, 10);
}