//tp0 entrega 21/4 dibujo libre usando figuras vistas
size(800, 800);
strokeWeight(5);
background(255);

fill(82,82,82);
quad(200, 600, 600, 600, 700, 800, 100, 800 ); //cuerpo


triangle(100,70,  300,170,  100,300);//oreja izquierda
triangle(730,100, 500,170,  700,300);//oreja derecha

fill(229,146,218);
triangle(125,105, 240,170,  120,250);//o izquierda

triangle(690,230, 540,180,  715,120);//o derecha

fill(82,82,82);
ellipse(width/2, height/2, 700, 600);//cara
 
fill(48,126,10);
ellipse(230,290, 100,100);//ojo izquierdo
ellipse(530, 290, 100,100);//ojo derecho

fill(10,10,10);
ellipse(230,290,60,60);//pupila izquierda
ellipse(530,290,60,60);//pupila derecha

fill(255,255,255);
ellipse(250,270, 30,30);//brillo izquierdo
ellipse(550,270, 30,30);//brillo derecho

fill(206,19,182);
triangle(395,400, 350,350, 440,348);//nariz


fill(188,15,15);
quad(250,480,  550,480,  480,580, 320,580);//boca

line(130,420, 15,450);//bigote 1i
line(120,450, 10,480);//b2i
line(110,480, 5,510);//b3i

line(675,420, 785,450);//b1d
line(680,450, 790,480);//b2d
line(685,480, 795,510);//b3d

strokeWeight(3);
fill(83,83,83);//pata izquierda
ellipse(50,660,50,50);
ellipse(70,610,50,50);
ellipse(120,610,50,50);
ellipse(140,660,50,50);

stroke(3,3,3);//pata derecha
fill(82,82,82);
ellipse(730,610,50,50);
ellipse(750,660,50,50);
ellipse(680,610,50,50);
ellipse(660,660,50,50);

strokeWeight(2);
fill(82,82,82);
ellipse(100,800,150,400);//pata izquierda
ellipse(700,800,150,400);//pata derecha

strokeWeight(10);//garras izquierdas
stroke(3,3,3);
line(50,675,15,635);
line(50,570,75,615);
line(145,575, 120,615);
line(150,660, 175,620);


strokeWeight(10);//garras derechas
line(730, 610, 750,570);
line(750, 660, 780,630);
line(680, 610, 665,570);
line(660, 660, 630,625);

stroke(81,81,81);//huellas izquierda
fill(229,146,218);
ellipse(70,610,40,40);
ellipse(50,660,40,40);
ellipse(120,610,40,40);
ellipse(140,660,40,40);
ellipse(95,670,40,65);

fill(229,146,218);
ellipse(730,610,40,40);
ellipse(750,660,40,40);
ellipse(680,610,40,40);
ellipse(660,660,40,40);
ellipse(705,670,40,65);
