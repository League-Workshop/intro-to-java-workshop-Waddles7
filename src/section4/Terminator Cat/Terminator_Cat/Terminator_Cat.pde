PImage cat;

void setup() {
  size(800, 800);
  cat = loadImage("cat.jpg");
  cat.resize(width, height);
  background(cat);
}

void draw() {
  ellipse(271, 274, 50, 50);
}

//right eye = x271 y274 left eye = x346 y274