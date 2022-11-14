//Facundo Bernal
//tp5
Eco e; 
Rocket r;
void setup() {
  size(800, 700);
 e = new Eco(570,270,3);
 r = new Rocket(640,300,1);
}

void draw() {
  inicio();
  //intermedio();
  //fin();
  
  e.imagen();
   r.rocket();
  if (keyPressed) {
    e.teclas (keyCode);
  }
}
