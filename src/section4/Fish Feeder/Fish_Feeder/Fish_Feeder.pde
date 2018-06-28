int foodX = (int) random(width - 20);
int foodY = 20;
PImage tank;

void setup() {

  size(800, 800);
  tank = loadImage("tank.jpg");
  tank.resize(width, height);
}

void draw() {

  fill(#E0A01D);
  noStroke();
  background(tank);
  ellipse(foodX, foodY, 15, 15);
  foodY += 5;
  drawFish();
  if (foodY > height) {
    foodY = 20;
    foodX = (int) random(width - 20);
    ellipse(foodX, foodY, 15, 15);
    foodY += 5;
  }
}

void drawFish(){
     noStroke();
     fill(255,255,255);
     ellipse(mouseX-17,mouseY-17,20,20); //back side eye
     fill(255,200,88);
     ellipse(mouseX,mouseY,90,50); //body
     triangle(mouseX+30,mouseY,mouseX+70,mouseY+30,mouseX+70,mouseY-30); //tail
     stroke(0);
     triangle(mouseX,mouseY,mouseX+15,mouseY+10,mouseX+15,mouseY-10); //side fin
     noStroke();
     fill(255,200,88);
     ellipse(mouseX,mouseY,15,15); //side fin cover
     noStroke();
     fill(255,255,255);
     ellipse(mouseX-25,mouseY-15,20,20); //front eye
     fill(0,0,0);
     ellipse(mouseX-25,mouseY-15,5,5); //pupil
}