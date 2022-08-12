int cant = 10;
int l;
int a;
int x;
int y;
boolean [][] muro =new boolean [cant][cant];

void setup(){
size(500,800);
l = 300;
a = 20;
}

void draw(){
  background(0);
  fill(255);
  
  //rect(200,30,l,a);//1
  rect(200,30,l,a);//1
  rect(0,100, l,a);//2
  rect(280,170,l,a);//3
  rect(0,240,l,a);//4
  rect(160,321,l,a);//5
  
  
  fill(255,0,0);
 // ellipse(mouseX,mouseY, 30,30);
  
   ellipse(x,y, 30,30);
   
}

void keyPressed() {

  if (key=='a') {
    x-=10;
  }
  if (key=='d') {
    x+=10;
  }
  if (key=='w') {
    y-=10;
  }
  if (key=='s') {
    y+=10;
  }
}
