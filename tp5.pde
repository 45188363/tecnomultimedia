//Facundo Bernal
//tp 5
int x;
int y;
//PImage inicio, intermedio, fin
PImage frente, detras, izquierda, derecha;

//Fondos f;

void setup() {
  size(800, 700);
  x= 570;
  y= 270;
  
  
  
}

void draw() {
  inicio();
//  inicio = loadImage ("inicio.jpg");
  //inicio.resize(800, 700);
  //image(inicio, 0, 0);
  
  
  
  //intermedio = loadImage ("intermedio.jpg");
  //intermedio.resize(990, 900);
  //image(intermedio, -100, -100);
  
  
 // fin = loadImage ("final.jpg");
  //fin.resize(990, 800);
  //image(fin, -100, 0);
  


   if (keyCode== LEFT) { //izquierda
    x-=5;
    
      izquierda = loadImage ("eco izquierda.png");
  izquierda.resize(60, 70);
  image(izquierda, x,y);
  }
  
  if (keyCode==RIGHT) { //derecha
    x+=5;
    
    derecha = loadImage ("eco derecha.png");
  derecha.resize(60, 65);
  image(derecha, x, y);

    
  }
  if (keyCode==UP) {//arriba
    y-=5;
    
      detras = loadImage ("eco atras.png");
  detras.resize(55, 65);
  image(detras, x, y);

    
  }
  if (keyCode==DOWN) {//abajo
    y+=5;
    
  frente = loadImage ("eco frontal.png");
  frente.resize(50, 60);
  image(frente, x, y);
    
  }
  

}
/*void keyPressed() {
  if (key== 'a') {
    x-=10;
    
      izquierda = loadImage ("eco izquierda.png");
  izquierda.resize(60, 70);
  image(izquierda, x,y);
  }
  
  if (key=='d') {
    x+=10;
    
    derecha = loadImage ("eco derecha.png");
  derecha.resize(60, 65);
  image(derecha, x, y);

    
  }
  if (key=='w') {
    y-=10;
    
      detras = loadImage ("eco atras.png");
  detras.resize(55, 65);
  image(detras, x, y);

    
  }
  if (key=='s') {
    y+=10;
    
  frente = loadImage ("eco frontal.png");
  frente.resize(50, 60);
  image(frente, x, y);
    
  }
}*/
