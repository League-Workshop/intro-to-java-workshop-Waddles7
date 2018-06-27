PImage cat;

void setup() {
  size(800, 800);
  cat = loadImage("cat.jpg");
  cat.resize(width, height);
  background(cat);
}

int acceleration = 7;
int x = 271;
int y = 274;

void draw() {
  fill(#FC0800);
  noStroke();
  ellipse(x, y, 50, 50);
  ellipse(x + 75, y, 50, 50);
}

void keyPressed() {
  x+=2*acceleration;
  y+=2*acceleration;

  if (x > width) {
    background(cat);
    x = 271;
    y = 274;
  }
}