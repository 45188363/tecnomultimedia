class Principal {
  int cantidad = 3;
  int escenarios;
  Rocket [] rockets = new Rocket [1]; //arreglos
  Rocket [] rockets1 = new Rocket [1];
  Vida [] vidaE = new Vida [cantidad];
  Limites [] lim = new Limites [14];

  Eco e;//asigno las clases
  Fondos f;
  Pokeball p;
  int disR = 350;

  Principal () {//constructor


    lim[0] = new Limites(180, 0, 600, 120);
    lim[1] = new Limites(-120, 0, 180, 700);
    lim[2] = new Limites(0, 60, 120, 60);
    lim[3] = new Limites(240, 0, 600, 240);
    lim[4] = new Limites(0, 180, 120, 700);
    lim[5] = new Limites(180, 180, 420, 60);
    lim[6] = new Limites(0, 300, 540, 60);
    lim[7] = new Limites(600, 180, 120, 180);
    lim[8] = new Limites(660, 0, 60, 700);
    lim[9] = new Limites(0, 300, 480, 180);
    lim[10] = new Limites(600, 420, 540, 60);
    lim[11] = new Limites(600, 420, 280, 240);
    lim[12] = new Limites(180, 540, 600, 60);
    lim[13] = new Limites(0,-120,700,120);


    for (int i=0; i<rockets.length; i++) {
      rockets [i] = new Rocket(140+i*disR, 0);
      rockets1 [i] = new Rocket(550+i*disR, 500);
    }
    for (int i=0; i<cantidad; i++) {
      vidaE [i] = new Vida(490+i*50, -30);
    }
    e = new Eco (70, 4, 40);
    f = new Fondos ();
    p = new Pokeball();
  }

  void display() {

    for (int i=0; i<lim.length; i++) { // todo dentro del for
      lim[i].dibujarVallas();

      if (contacto(e.x, e.y, e.tam, lim[i].x, lim[i].y, lim[i].ancho, lim[i].alto)) {


        if (e.x+e.tam>=lim[i].x && e.x<=lim[i].x+lim[i].ancho/2 ) {
          e.reboteDer();
        }
        if (e.x<=lim[i].x+lim[i].ancho && e.x>=lim[i].x ) {
          e.reboteIzq();
        }
        if (e.y+e.tam>lim[i].y && e.y<lim[i].y+lim[i].alto/2 ) {
          e.reboteAbajo();
        }
        if (e.y<lim[i].y+lim[i].alto && e.y>lim[i].y ) {
          e.reboteArriba();
        }
      }

      escenarios();
    }
  }


  boolean contacto(int px, int py, int tam, float x, float y, float ancho, float alto ) {

    if (px+tam > x && px <x+ancho && py+tam >y && py < y+alto) {

      return true;
    } else {

      return false;
    }
  }

  void jugando() {//esta el juego
    f.mapa();
    e.dibujar();
    p.objetivo();
    for (int i=0; i<rockets.length; i++) {
      rockets [i].mover();
      rockets [i].Dibujar();
    }
    for (int i=0; i<rockets.length; i++) {
      rockets1 [i].mover1();
      rockets1 [i].Dibujar();
    }
    capturado();
    andando();
  }

  void andando() {//muestra las vidas
    for (int i=0; i<cantidad; i++) {
      vidaE [i].vida();
    }
  }

  void capturado() {//colision con rocket
    for (int i=0; i<rockets.length; i++) {
      float distancia = dist(e.x, e.y, rockets[i].x, rockets[i].y);
      if (distancia<30) {
        cantidad = cantidad - 1;
        e.x = 70;
        e.y = 4;
      }
    }
    for (int i=0; i<rockets.length; i++) {
      float distancia = dist(e.x, e.y, rockets1[i].x, rockets1[i].y);
      if (distancia<30) {
        cantidad = cantidad - 1;
        e.x = 140;
        e.y = 40;
      }
    }
  }

  void moverEco(int tecla) {//mueve al personaje
    if (e.y<520) {
      if (tecla == DOWN ) {
        e.y += 60;
      }
    }
    if (e.y>0) {
      if (tecla == UP) {
        e.y -=60;
      }
    }
    if (e.x>0) {
      if (tecla == LEFT) {
        e.x -=60;
      }
    }
    if (e.x<630) {
      if (tecla == RIGHT) {
        e.x +=60;
      }
    }
  }


  void escenarios() {//diferentes fondos
    if (escenarios == 0) {
      f.inicio();
    }
    if (escenarios == 1) {
      f.reglas();
    }
    if (escenarios == 2) {
      jugando();
    }
    if (escenarios == 3) {
      f.ganaste();
    }
    if (escenarios == 4) {
      f.perdiste();
    }
    if (escenarios == 5) {
      f.fin();
    }
  }

  void cambiarEscenarios (int tecla) {//cambio de fondos
    if (escenarios == 0) {
      if (tecla == 'E' || tecla == 'e') {
        escenarios = 1;
      }
    }

    if (escenarios == 1) {
      if (tecla == 'J' || tecla == 'j') {
        escenarios = 2;
      }
    }
    if (escenarios == 2) {
      float distancia2 = dist(e.x, e.y, p.px, p.py);
      if (distancia2<60) {
        escenarios = 3;
      }
    }
    if (escenarios == 3 || escenarios == 4) {
      cantidad = 3;
      e.x = 70;
      e.y = 4;
      if (tecla == 'R' || tecla == 'r') {
        escenarios = 2;
      }
      if (tecla == 'C' || tecla == 'c') {
        escenarios = 5;
      }
    }
    if (escenarios == 5) {
      if (tecla == 'V' || tecla == 'v') {
        escenarios = 0;
      }
    }
  }

  void perder() {//pierde el juego
    if (cantidad == 0 ) {
      escenarios = 4;
    }
  }
}
