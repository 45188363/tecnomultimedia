//tp2
//Bernal Facundo
//https://youtu.be/x-M8vO-w2V0
int i, x;
void setup() {
  size(600, 500);
  background(0);
  frameRate(15);
}
void draw() {

  for (i=1; i<10; i++) {
    fill(103, 26, 22);
    ellipse(300, 250, 600-2, 490-x);//ojo inicial
    x=x+10;
  }

  if (x>900) {
    for (int x=200; x<=350; x=x+20)
    {
      background(random(255), random(255), random(255));
      fill(103, 26, 22);
      ellipse(300, 250, 600, 490); // parpado


      fill(random(255), random(255), random(255));
      ellipse(300, 250, 600, 370);//cornea


      fill(random(0), random(255), random(0));
      ellipse(mouseX, mouseY, 120, 150);//iris
    }
  }
}
void mousePressed() {
  x = 0;
}

void keyPressed() {
  x = 0;
}
