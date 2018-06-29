int foodX = (int) random(width - 20);
int foodY = 20;
PImage tank;
int score = 0;
int win = 1;
int speed = 5;

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
  foodY += speed;
  drawFish();
  checkCatch(foodX, foodY);
  fill(0, 0, 0);
  textSize(16);
  text("Score: " + score, 20, 20);
  text("Level: " + win, 100, 20);
  if (score == 10) {
    score = 0;
    win ++;
    speed ++;
  }
  if (foodY > height) {
    foodY = 20;
    foodX = (int) random(width - 20);
    ellipse(foodX, foodY, 15, 15);
    foodY += speed;
  }
}

void drawFish() {
  noStroke();
  fill(255, 255, 255);
  ellipse(mouseX-17, mouseY-17, 20, 20); //back side eye
  fill(255, 200, 88);
  ellipse(mouseX, mouseY, 90, 50); //body
  triangle(mouseX+30, mouseY, mouseX+70, mouseY+30, mouseX+70, mouseY-30); //tail
  stroke(0);
  triangle(mouseX, mouseY, mouseX+15, mouseY+10, mouseX+15, mouseY-10); //side fin
  noStroke();
  fill(255, 200, 88);
  ellipse(mouseX, mouseY, 15, 15); //side fin cover
  noStroke();
  fill(255, 255, 255);
  ellipse(mouseX-25, mouseY-15, 20, 20); //front eye
  fill(0, 0, 0);
  ellipse(mouseX-25, mouseY-15, 5, 5); //pupil
}

void checkCatch(int x, int y) {
  if (x > mouseX && x < mouseX+70) {
    if (y > mouseY-17 && y < mouseY+30) {
      score++;
      foodY = 20; //if the food was eaten, make more food fall from the top
      foodX = (int) random(width-20);
    }
  } else if (foodY > height && score > 0) {
    score--;
  }
}