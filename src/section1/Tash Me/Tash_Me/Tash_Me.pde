PImage mustache;
PImage friend;
PImage hat;

void setup(){
  friend = loadImage("friend.jpg");
  size(800, 600);
  friend.resize(width,height);
  background(friend);
  mustache = loadImage("mustache.png");
  hat = loadImage("hat.png");
}

void draw(){
  mustache.resize(500,250);
  hat.resize(500,250);
  if (mousePressed){
    background(friend);
    image(mustache,mouseX,mouseY);
    image(hat,mouseX,mouseY-250);
  }
}