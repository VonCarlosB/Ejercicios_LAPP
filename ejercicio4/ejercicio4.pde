float coX, coY; // Coordenadas del círculo
float posXTex, posYTex; // Coordenadas del numero
color colCuad; // Color del cuadrado
int cont; // Contador de "mousePressed"
float diam; // Diámetro del círculo;
int distancia; // distancia entre el cuadrado y el círculo.

void setup(){
size(400,400);
smooth();
coX=40;
coY=60;
posXTex= width/2;
posYTex= 160;
colCuad= color(0);
PFont fuente;
fuente = loadFont("SansSerif-140.vlw");
textFont(fuente);
cont=0;
diam= 40;
distancia = 200;
}

void draw(){
background(255);
noStroke();
fill(colCuad);
rect(170 ,280 , 60,60);
fill(200,0,0);
circle(coX,coY,diam);
fill(0);
text(cont, posXTex,posYTex);
}
