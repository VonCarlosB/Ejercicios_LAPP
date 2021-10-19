String[] frase;
PFont fuente;
int contador, x, degrees;
float ancho;
void setup(){
  size(400, 400);
  frase = new String[12];
  frase[0] = "Con";
  frase[1] = "estas";
  frase[2] = "palabras";
  frase[3] = "que";
  frase[4] = "vienen";
  frase[5] = "y";
  frase[6] = "van";
  frase[7] = "finalizamos";
  frase[8] = "el";
  frase[9] = "curso";
  frase[10] = "de";
  frase[11] = "Processing";
  fuente = loadFont("Monospaced.vlw");
  textFont(fuente, 50);
  textSize(50);
  contador = 0;
  x = 0;
  degrees = 0;
  ancho = 0;
}

void draw(){
  background(135,120,120);
  color(255);
  degrees += 4;
  if(contador%2 == 0 && contador<12){
  ancho = textWidth(frase[contador]); 
  text(frase[contador], x, 200);
    if(x+ancho >= 400){
      contador++;
      x = 400-int(textWidth(frase[contador]));
    }
    else x += int(400/ancho);
  }
  else if(contador<12){
  ancho = textWidth(frase[contador]); 
  text(frase[contador], x, 200);
    if(x <= 0){
      contador++;
      x = 0;
    }
    else x -= int(400/ancho);
  }
  else{
    pushMatrix();
    translate(200,200);
    rotate(radians(degrees));
    text("Hasta pronto", -(textWidth("Hasta luego")/2), 0);
    popMatrix();
  }
}

void mouseClicked(){
  contador = 0;
  x = 0;
  degrees = 0;
}
