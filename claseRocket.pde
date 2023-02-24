class Rocket {
  PImage rocket;
  int x, y;
  int velY;

  Rocket(int posx, int posy) { //constructor
    rocket = loadImage("rocket1.png");

    x = posx;
    y = posy;
    velY = 1;
  }

  void Dibujar() {
    image(rocket, x, y);
  }

  void mover() {
    if (y<0) {
      velY=1;
    }
    if (y>260) {
      velY=-1;
    }
    y=y+velY;
  }

  void mover1() {
    if (y<250) {
      velY=1;
    }
    if (y>490) {
      velY=-1;
    }
    y=y+velY;
  }
}
