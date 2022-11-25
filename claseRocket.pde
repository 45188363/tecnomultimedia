class Rocket {
  int i;
  float x, y, dx, dy;
  PImage [] rocket;
  Rocket(float x, float y, int i, float dx, float dy) {
    this.x = x;
    this.y = y;
    this.i = i;
    this.dx = dx;
    this.dy = dy;
    rocket = new PImage[4];

    for (i = 0; i<rocket.length; i ++) {
      rocket[i] = loadImage("rocket"+i+".png");
    }
  }
  void rocket () {
    image(rocket[i], x, y);
  }

  void mover () {
    if (dx>width-25 || dx<width-25) {
      x -= 10;
    }
    dx += x;
    dy -= y;
  }
}
