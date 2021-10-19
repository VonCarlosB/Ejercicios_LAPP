float posH, tam;

void setup(){
  size(400,400);
  smooth();
}

void draw(){
  background(255);
  fill(255);
  stroke(1);
  rect(20,330,50,50);
  if(mouseX < 70 && mouseX > 20 && mouseY < 380 && mouseY > 330){
    noStroke();
    fill(0);
    posH = map(mouseX, 20, 70, -20, 420);
    rect(0,190,posH,20);
    tam = map(mouseY, 330, 380, 20, 400);
    rect(posH-20,200-(tam/2),20,tam);
  }
}
