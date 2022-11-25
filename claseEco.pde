class Eco {
  int x, y, i;
  PImage [] eco;
  Eco (int x, int y, int i) {
    this.x = x;
    this.y = y;
    this.i = i;
    eco = new PImage[4];

    for  (i = 0; i<eco.length; i ++) {
      eco[i] = loadImage("eco"+i+".png");
    }
  }
  void eco () {
    image(eco[i], x, y);
  }

  void mover (int presionar) {


    if (presionar == RIGHT) {
      x +=5;
      i = 0;
    }
    if (presionar == LEFT) {
      x -=5;
      i=1;
    }
    if (presionar == UP) {
      y -=5;
      i=2;
    }
    if (presionar == DOWN) {
      y +=5;
      i=3;
    }
  }
}
