//tp3
//juego
float x = 350;
float y = 300;
//float [] tam = new float[cant];
float velox = 7;
float veloy = 2;
float radio = 20;
int score1;
int cant = 20;
int directx = 1;
int directy = -1;
int tam;
boolean [][] celada = new boolean [cant] [cant];

void setup() {
  size(700, 600);
  tam = width/cant;
}


void draw() {
  background(7, 4, 49);//fondo
  
  fill(255);
    ellipse(90,50,60,60);
    ellipse(550,100,100,100);
    ellipse(340,200,200,200);

  fill(255, 0, 0);//bola
  ellipse(x, y, 30, 30);

fill(255); //plataforma
rect(mouseX, 550, 100,15);

  x += velox * directx; //horizontal
  if ((x > width - radio) || (x < radio)) {
    directx = -directx;
  }
  
  y += veloy * directy; //vertical
  if ((y > height - radio ) || (y < radio)) {
    directy = -directy;
  }
  
 if (x > mouseX-30 && x < mouseX + 60 && y > 0.9*height-5 && y < 0.9*height+5) {
directy = -1*directy;
score1= score1+1;// rebote en la plataforma
}
}
void marciano(float px, float py, float tam) {
  fill(40, 200, 200,100);
  ellipse(px, py, tam, tam);
  fill(0, 200, 0);
  ellipse(px, py, tam/2, tam);
  fill(100);
  triangle(px-tam, py, px+tam, py, px, py+tam);
  fill(255);
  ellipse(px-tam,py+3,20,20);
}
