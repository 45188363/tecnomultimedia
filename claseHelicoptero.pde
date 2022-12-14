class Helicoptero {
int hx, hy;
PImage helicoptero ;

Helicoptero(int hx ,int hy) {
hx = hx;
hy = hx;
helicoptero = loadImage ("helicoptero.png");
}

}

void mover(){
  teclas();
}
void dibujar(){
image (helicoptero,200,200,width,height);
}
void mover(){
    if (keyPressed == true) {
    if (keyCode == RIGHT) {
       hx ++;
   } else { 
    if (keyCode == LEFT) {
        hx --;
     } else { 
      if (keyCode == UP) {
        hy --;
        } else { 
       if (keyCode == DOWN) {
         hy ++;
  }
  }
  }
 }
 }
  }
}
