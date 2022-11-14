class Rocket{
PImage rocket;
int x,y,i;
float size;
Rocket(int x, int y,int i){
  this.x = x;
  this.y = y;
  this.i = i;
}
void rocket (){
  rocket = loadImage("rocket0.png");
  rocket.resize(60, 70);
  image(rocket, x%2, y);
  
  
  rocket = loadImage("rocket1.png");
  rocket.resize(60, 70);
  image(rocket, x, y+50);
  // aca los "rocket" tengo que hacer q se muevan y que tengan colision y tambien quiero ponerlo con arreglos
  }
}
