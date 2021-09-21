PImage foto;

void setup() {
  size(400, 400);
  foto = loadImage("canales.jpg");
}

void draw() {
  background(255);
  image(foto, 50, 50);
  fill(180, 180, 180);
  noStroke();
  rect(0, 0, 50, 50);
  rect(350, 0, 400, 50);
  rect(0, 350, 50, 400);
  rect(350, 350, 400, 400);
  noFill();
  stroke(255, 0, 0);
  strokeWeight(2);
  circle(50, 200, 100);
  circle(350, 200, 100);
  triangle(100, 0, 300, 0, 200, 150);
  triangle(100, 400, 300, 400, 200, 250);
  noStroke();
  fill(255, 255, 0, 180);
  circle(200, 200, 100);
  fill(255);
  beginShape();
  vertex(180, 170);
  vertex(230, 180);
  vertex(230, 185);
  vertex(200, 215);
  vertex(210, 240);
  vertex(200, 240);
  vertex(190, 215);
  vertex(215, 185);
  vertex(180, 180);
  endShape();
  stroke(0);
  strokeWeight(1);
  ellipse(100, 200, 100, 50);
  ellipse(300, 200, 100, 50);
  noFill();
  circle(50, 200, 50);
  circle(350, 200, 50);
}
