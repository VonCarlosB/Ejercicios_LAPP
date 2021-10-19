float posH, tam, r, b;
int i, numcirculos;
void setup(){
  size(400,400);
  smooth();
  i = 0;
}

void draw(){
  background(255);
  fill(255);
  stroke(1);
  rect(300,320,50,50);
  if(mouseX < 350 && mouseX > 300 && mouseY < 370 && mouseY > 320){
    posH = map(mouseX, 300, 350, -20, 400);
    tam = map(mouseY, 320, 370, 10, 420);
    r = int(map(mouseY, 320, 370, 200, 0));
    b = int(map(mouseY, 320, 370, 200, 255));
    noStroke();
    fill(r, r, b);
    rect(posH,200-(tam/2),20,tam);
    stroke(1);
    numcirculos = int(posH/25);
    for(int i = 0; i<=numcirculos; i++){
      fill(255, 255-(i*25), 255);
      circle(i*25,200,20);
    }
  }
}
