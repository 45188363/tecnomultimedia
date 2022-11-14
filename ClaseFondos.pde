PImage inicio,intermedio,fin;

void inicio(){
  inicio = loadImage ("inicio.jpg");
  inicio.resize(800, 700);
  image(inicio, 0, 0);
}

void intermedio(){
 intermedio = loadImage ("intermedio.jpg");
 intermedio.resize(990,800);
 image(intermedio,-100,-100);
}

void fin(){
 fin = loadImage ("fin.jpg");
 fin.resize(990, 800);
 image(fin, -100, 0);
//aca tengo que convertirlo en una clase
}
