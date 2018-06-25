PImage rainbow;
PImage unicorn;

void setup(){
  rainbow = loadImage("rainbow.jpg");
  size(800,600);
  rainbow.resize(width,height);
  background(rainbow);
  unicorn = loadImage("unicorn.png");
}

void draw(){
  background(rainbow);
  image(unicorn,mouseX,mouseY);
}