//Los Simpson tp uno
int a, up, f ;
PImage nubes, tele;
PFont fuente;

void setup(){
size(1000,700);
  
  a = 0;
  up = 0;
  
  fuente = loadFont ("ComicSansMS-58.vlw");
  textFont(fuente);
 
  tele = loadImage ("tele los simpson.jpg");
  tele.resize(1000,700);
  image(tele,0,0);
 
 nubes = loadImage("nubes los simpson.jpg");
 nubes.resize(1000,700);
  

textSize(110);
textAlign(CENTER);
}

void draw(){
  image(nubes,0,0);
 
 f = frameCount;
  up--;
  a++;
 println(frameCount);
 if (f>0 && f <300);
  fill(255,255,0,a-280);
  fill(255,255,0, a-470);
  
 
  if(millis()> 5000) {
   image(nubes,0,0);
   //if (f>0 && f <300);
  fill(255,255,0,a-280);
  fill(255,255,0, a-470);
  text("Los Simpsons",250,200, 500,350);
  

}
if (millis()> 13000){ //&& millis()<17000){
  image(tele,0,0);
  textFont(fuente, 70);
  text("Created by" ,440,250);
  text("Matt    grening", 450, 420);
  
  if(millis()>20000 && millis()< 23000){
   image(tele,0,0);
  text("Developed By",450,250); 
  text("James L. Brooks",450,350);
  text("Matt Groening",450,450);
  text("Sam Simon",450,550);
  }
  
   if(millis()>26000 && millis()< 29000){
   image(tele,0,0);
   text("A y gracias por ver :D", 450,400); 
   }
   
   if(millis()>32000 && millis()<35000);
 
} 
}
void keyPressed() {
    
  if (key == 'r' || key == 'R');
  {
    frameCount=0;
    up=0;
    a=0;
    
    
    
  }
}
