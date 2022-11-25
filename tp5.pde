//Facundo Bernal legajo 91488/1
//Video  https://youtu.be/U5NYZoh0pOU
//tp5
import ddf.minim.*;
Minim minim;
AudioPlayer player;
AudioInput input;

Eco e;
Rocket r;
Rocket r2;
Fondos f;
void setup() {
  size(800, 700);

  minim = new Minim (this);
  player = minim.loadFile("cancion.mp3");
  input = minim.getLineIn();


  e = new Eco(570, 270, 3);
  r = new Rocket(640, 300, 1, 1, 1);
  r2 = new Rocket(540, 600, 0, -1, 1);
  f = new Fondos(2);
}

void draw() {
  f.img();
  //f.hacerB();
  e.eco();
  r.rocket();
  r.mover();
  r2.rocket();
  r2.mover();

  if (keyPressed) {
    e.mover (keyCode);
  }
}
void mousePressed() {
  // f.accionarB();
  player.play();
}
