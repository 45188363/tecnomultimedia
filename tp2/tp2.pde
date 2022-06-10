//tp2
//Bernal Facundo
int i, a;
void setup(){ 
size(600,500);
frameRate(5);
background(0);
}
void draw(){

if(millis()>1000){ // &&,millis ()<13000){
  
for(i=1;i<10;i++)
{
 fill(103,26,22);
 ellipse(300,250,600-2,490-a);
a=a+20;

if(millis()> 2000 && millis()<300000){
  background(random(255),random(255),random(255));
  
  
  for(int x=200; x<=350; x=x+20){
    
    fill(103,26,22);
    ellipse(300,250,600,490);
  
    
  fill(random(255),random(255),random(255));
 ellipse(300,250,600,400);
 fill(random(0),random(255),random(0));
 ellipse(mouseX,mouseY,120,150);
 
  }
}
println(frameRate);
}
}
}
