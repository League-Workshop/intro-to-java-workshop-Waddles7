void setup(){
  size(800,800);
  background(#08FFEC);
}

void draw(){
  fill(#FF8808);
  if (mousePressed){
    fill(#1708FF);
  }
  ellipse(400,400,700,700);
}