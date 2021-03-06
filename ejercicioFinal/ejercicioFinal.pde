String[] frase;
PFont fuente;
int contador, x, degrees;
float ancho;
void setup(){
  size(400, 400);
  frase = new String[13];
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
  frase[12] = " ";
  fuente = loadFont("SansSerif.vlw");
  textFont(fuente, 50);
  textSize(50);
  contador = 0;
  x = 0;
  degrees = 0;
  ancho = 0;
}

void draw(){
  background(135,120,120);
  degrees += 4;
  if(contador%2 == 0 && contador<frase.length){
  ancho = textWidth(frase[contador]); 
  text(frase[contador], x, 200);
    if(x+ancho >= 400){
      contador++;
      if(contador<13) x = 400-int(textWidth(frase[contador]));
    }
    else{
      x++;
      frameRate(400-int(textWidth(frase[contador])));
    }
  }
  else if(contador<frase.length){
  ancho = textWidth(frase[contador]); 
  text(frase[contador], x, 200);
    if(x <= 0){
      contador++;
      x = 0;
    }
    else{
      x--;
      frameRate(400-int(textWidth(frase[contador])));
    }
  }
  else{
    frameRate(60);
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
