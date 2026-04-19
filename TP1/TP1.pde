PImage miImagen;

void setup() {
  size(800, 400);
  miImagen = loadImage("eldiscobolo.jpg");
}

void draw() {
  background(0);  

  image(miImagen, 0, 0, 400, 400);

  noFill();

  // fressby
  fill(#d6bab9);
  stroke(255);
  ellipse(460, 43, 85, 60); 
  stroke(#37322e);


  // brazo izq  
  //muñeca
  strokeWeight(2);
line(466,40, 516,54);
line(458,25, 515,32);
stroke(255);
  stroke(255);
  fill(#af9a95);
beginShape();

vertex(499, 30);
vertex(568, 40);
vertex(567, 40);
vertex(656, 163);
vertex(630, 180);
vertex(559, 68);
vertex(560, 67);
vertex(501, 49);

endShape(CLOSE);

// mano izq
 stroke(0);
   fill(#d6bab9);
beginShape();
vertex(418, 30);
vertex(440, 15);
vertex(477,30);
vertex(445,37);
endShape(CLOSE);

line(472,27, 469,37);
//dedos

//PULGAR
beginShape();
vertex(445, 37);
vertex(471,34);
vertex(469,43);
vertex(419, 47);
endShape(CLOSE);
strokeWeight(7);
stroke(#d6bab9);
line(447, 37 ,465, 34);
strokeWeight(2);
 stroke(0);
 //dedos
 line(433,22,446, 24);
line(425,27,438, 29);
strokeWeight(5);
stroke(#d6bab9);
line(470,30, 469,37);
line(499,31, 500, 47);
strokeWeight(2);

  //cabeza
  stroke(255);
  ellipse(700, 140, 80, 80);

  // cara
  stroke(0);
   line(680, 125, 720, 145); 
  ellipse(690, 145, 6, 6);  
  ellipse(715, 155, 6, 6);  
  line(700, 160, 705, 170); 
  line(695, 175, 715, 175); 
  //pelo
  stroke(255);
  line(715,115, 708, 131);
  line(721,123, 718, 135);
 line(729,126, 726, 135);

  // hombro
  fill(#d6bab9);
  stroke(255);
  ellipse(650, 180, 40, 40);

  // torso
  rectMode(CENTER);
  rect(650, 250, 130, 130);

  // brazo der
  stroke(255);
  line(710, 210, 740, 260);
  line(740, 260, 730, 300);

  // base
  ellipse(640, 350, 200, 40);

  // mano
  line(730, 300, 720, 310);
  line(730, 300, 740, 310);
  line(730, 300, 730, 320);

  // pirns
 
beginShape();

vertex(624, 266);
vertex(693, 300);
vertex(688, 354);
vertex(717, 361);
vertex(667, 361);
vertex(676, 315);
vertex(621, 307);

endShape(CLOSE);
fill(#a8958f);
beginShape();

vertex(640, 316);
vertex(617, 316);
vertex(592, 346);
vertex(620, 360);
vertex(617, 344);

endShape(CLOSE);
 fill(255,0,0);
   text(( mouseX)+" -"+ mouseY, mouseX, mouseY) ; 
}
