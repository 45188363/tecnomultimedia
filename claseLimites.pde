class Limites {
  float x, y, ancho, alto;
  Limites(float x, float y, float ancho, float alto) {
    this.x = x;
    this.y = y;
    this.ancho = ancho;
    this.alto = alto;
  }
  void dibujarVallas() {
    noStroke(); //sin lineas
    noFill(); //sin relleno
    rect(x, y, ancho, alto);
  }
}
