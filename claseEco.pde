
class Eco {
  int x, y, i, tam;
  PImage [] eco, der;
  Eco (int x, int y, int i, int tam) { // constructor
    this.x = x;
    this.y = y;
    this.i = i;
    this.tam = tam;
    eco = new PImage[4];

    for  (i = 0; i<eco.length; i ++) {
      eco[i] = loadImage("eco"+i+".png");
    }
  }
  void dibujar () { // pone a Eco en patalla
    image(eco[i], x, y, 35, 45);
  }

  void mover (int presionar) { // mueve a Eco
    if (presionar == RIGHT) {
      x +=60;
      i = 0;
    }
    if (presionar == LEFT) {
      x -=60;
      i=1;
    }
    if (presionar == UP) {
      y -=60;
      i=2;
    }
    if (presionar == DOWN) {
      y +=60;
      i=3;
    }
  }

  void reboteDer() {
    x -= 30;
  }
  void reboteIzq() {
    x +=40;
  }
  void reboteArriba() {
    y += 30;
  }
  void reboteAbajo() {
    y -= 30;
  }
}
