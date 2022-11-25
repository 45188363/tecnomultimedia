class Fondos {
  //int pantalla;
  //int anchoB, altoB;
 // Boton bot1, bot2;
  //..........................
  int i;
  PImage [] img;
  Fondos (int cambiarfondo) {
  /*  anchoB = 200;
    altoB = 80;
    bot1 = new Boton(300,420, anchoB, altoB );
    bot2 = new Boton(0, altoB+0, anchoB, altoB);*/
  
    //......................................
    i = cambiarfondo;
    img = new PImage[5];

    for (int i=0; i<img.length; i++) {
      img[i] = loadImage("fondo"+i+".jpg");
    }
  }

/*
  void hacerB() {
    text (pantalla, width/2, 100);
    if (pantalla==0) {
      bot1.dibuB(0, 1, "Star");
    } else if (pantalla==1) {
      bot2.dibuB(1, 0, "Iniciar");
    } else if (pantalla==2) {
    }
  }
  void accionarB() {
    if (bot1.presbot(300,420, anchoB, altoB) && pantalla==bot1.actual) {
      pantalla = bot1.prox;
    }
    
    if (bot2.presbot(0, altoB+0, anchoB, altoB)&& pantalla==bot2.actual) {
      pantalla = bot2.prox;
    }
    
     
  }*/
  //.............................................
  void img () {

    image(img[i], 0, 0, 800, 700);

    //map1-map2
    /*if(i==0){
     image()
     }*/
    if (i==2 && e.x<10 && e.y<=380) {//map1
      if (e.y>=180) {
        e.y = 225;
        e.x = 790;
      } else {
        if (e.y>200) {
          e.y = 250;
          e.x = 790;
        }
      }
      i = 3;//cambio a map2
    }
    if (i==3 && e.x>790 && e.y>100) {//map2
      if (e.y<=210) {
        e.y = 270;
        e.x = 10;
      } else {
        if (e.y<=280) {
          e.y = 320;
          e.x = 10;
        }
      }
      i = 2;//cambio a map3
    }
    //map1-map2

    //map2-map3
    if (i==3 && e.x>=200 && e.y>=height) {

      if (e.x<220) {
        e.y = 0;
        e.x = 517;
      } else {
        if (e.x>=220) {
          e.y = 0;
          e.x = 518;
        }
      }
      i = 4;
    }
    if (i==4 && e.x>518 && e.y<height) {
      if (e.x<=519 && e.y<height) {
        e.y = 570;
        e.x = 200;
      } else {
        if (e.x>519 && e.y<height) {
          e.y = 570;
          e.x = 201;
        }
      }
      i = 3;
    }
  }
}
