class Eco {
  PImage eco;
  int x, y, i;
  Eco (int x, int y, int i){
    this.x = x;
    this.y = y;
    this.i = i;
  }
  void imagen (){
  eco = loadImage ("eco"+i+".png");
  eco.resize(60, 70);
  image(eco, x, y);
  }
  
  void teclas (int precionar){
    if (precionar == RIGHT){
      x +=2;
      i = 0;
    }
      if (precionar == LEFT) {
      x -=2;
      i=1;
    }
    if (precionar == UP) {
      y -=2;
      i=2;
    }
    if (precionar == DOWN) {
      y +=2;
      i=3;
    }
  }
}
