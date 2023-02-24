class Eco {
  int x, y, tam;
  PImage eco;
  Eco (int x, int y, int tam) { // constructor
    this.x = x;
    this.y = y;
    this.tam = tam;

      eco = loadImage("eco.png");
  }
  void dibujar () { // pone a Eco en patalla
    image(eco, x, y, 35, 45);
  }

  void mover (int presionar) { // mueve a Eco
    if (presionar == RIGHT) {
      x +=60;  
    }
    if (presionar == LEFT) {
      x -=60;
    }
    if (presionar == UP) {
      y -=60;
    }
    if (presionar == DOWN) {
      y +=60;
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
