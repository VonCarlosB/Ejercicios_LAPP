int fondo; // Variable del color del fondo
PFont font;
String a;
int pos;
int deg;
float esc;

void setup(){
size(400,400);
font = loadFont("Monospaced.plain-48.vlw");
a= "Hola";
textSize(60);
noStroke();
fondo=255;
pos=0;
deg = 0;
esc = 1;
}

void draw(){
  background(fondo);
  fill(255, 255, 0);
  noStroke();
  rect(20, 20, 80, 80);
  rect(300, 20, 80, 80);
  rect(20, 300, 80, 80);
  rect(300, 300, 80, 80);
  if(mouseX>20 && mouseX<100 && mouseY>20 && mouseY<100)fondo=0;
  else{
    fondo=255;
    if(mouseX>20 && mouseX<100 && mouseY>300 && mouseY<380&&pos<300){
      fill(0);
      text(a, pos, 200);
      pos+=2;
    }
    else{ 
      pos=0;
      if(mouseX>300 && mouseX<380 && mouseY>20 && mouseY<100){
        pushMatrix();
        translate(200,200);
        scale(esc);
        esc = esc*0.98;
        fill(255, 255*(1-esc), 255*(1-esc));
        noStroke();
        circle(0, 0, 200);
        if(esc<0.1){esc = 1;}
        popMatrix();
      }
      else{
        esc = 0;
        if(mouseX>300 && mouseX<380 && mouseY>300 && mouseY<380){
          pushMatrix();
          translate(200, 200);
          rotate(radians(deg));
          deg++;
          fill(0, 255, 0);
          noStroke();
          rect(-100, -100, 200, 200);
          popMatrix();
        }
      }
    }
  }
}
