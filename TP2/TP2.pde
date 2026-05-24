PImage img1, img2, img3, img4, img5;

PFont fuente;

int pantalla = 1;

int tiempoPantalla;

float transparencia = 0;

int letrasMostradas = 0;



//animación  textos

String texto2 =
"Este es el pequeño príncipe,\n" +
"su padre, Rey de Todo el Cosmos,\n" +
"en estado de embriaguez destruyó\n" +
"la luna y todas las estrellas";

String texto5 =
"Felicidades, lo lograste!\n" +
"Creaste la Luna!";



// ESTRELLAS PANTALLA 3


float estrellaX1 = 50;
float estrellaY1 = 30;

float estrellaX2 = 120;
float estrellaY2 = 80;

float estrellaX3 = 200;
float estrellaY3 = 140;

float estrellaX4 = 300;
float estrellaY4 = 60;

float estrellaX5 = 400;
float estrellaY5 = 200;

float estrellaX6 = 500;
float estrellaY6 = 100;

float estrellaX7 = 580;
float estrellaY7 = 170;

float estrellaX8 = 250;
float estrellaY8 = 260;

float estrellaX9 = 350;
float estrellaY9 = 20;

float estrellaX10 = 470;
float estrellaY10 = 300;



// estrellas pantalla 5 


float e5x1 = 50;
float e5y1 = 30;

float e5x2 = 120;
float e5y2 = 80;

float e5x3 = 200;
float e5y3 = 140;

float e5x4 = 300;
float e5y4 = 60;

float e5x5 = 400;
float e5y5 = 200;

float e5x6 = 500;
float e5y6 = 100;

float e5x7 = 580;
float e5y7 = 170;

float e5x8 = 250;
float e5y8 = 260;

float e5x9 = 350;
float e5y9 = 20;

float e5x10 = 470;
float e5y10 = 300;



void setup() {

  size(640,480);

  img1 = loadImage("pantalla1.png");
  img2 = loadImage("pantalla2.png");
  img3 = loadImage("pantalla3.png");
  img4 = loadImage("pantalla4.png");
  img5 = loadImage("pantalla5.png");

  fuente = createFont("Courier New",22);

  textFont(fuente);

  tiempoPantalla = millis();

}



void draw() {

  background(0);


 
  // cambio automatico


  if(pantalla == 2 && millis() - tiempoPantalla > 12000){

    pantalla = 3;

    tiempoPantalla = millis();

    letrasMostradas = 0;

    transparencia = 0;

  }



  // PANTALLA 3
  // ahora dura 12 segs 


  else if(pantalla == 3 && millis() - tiempoPantalla > 12000){

    pantalla = 4;

    tiempoPantalla = millis();

    transparencia = 0;

  }


  
  // PANTALLA 4
  // ahora dura 9 segds


  else if(pantalla == 4 && millis() - tiempoPantalla > 9000){

    pantalla = 5;

    tiempoPantalla = millis();

    letrasMostradas = 0;

  }




  // PANTALLA 1
 

  if (pantalla == 1) {

    image(img1,0,0,640,480);

  }





  // PANTALLA 2


  else if (pantalla == 2) {

    image(img2,0,0,640,480);

    fill(255);

    textSize(22);

    textAlign(LEFT);

    text(texto2.substring(0, letrasMostradas),30,60);

    if(frameCount % 2 == 0){

      if(letrasMostradas < texto2.length()){

        letrasMostradas++;

      }

    }

  }



  
  // PANTALLA 3


  else if (pantalla == 3) {

    image(img3,0,0,640,480);

    fill(255, transparencia);

    textAlign(CENTER);

    textSize(18);

    text("A pesar de reconocer su error,", width/2,40);

    text("el Rey encarga a su hijo de cinco", width/2,70);

    text("centímetros de altura, el Príncipe,", width/2,100);

    text("que vaya a la Tierra con un", width/2,130);

    text("\"Katamari\", una bola mágica", width/2,160);

    text("que permite que cualquier cosa", width/2,190);

    text("más pequeña que ella se adhiera", width/2,220);

    text("y crezca, para recrear", width/2,250);

    text("las estrellas y la Luna.", width/2,280);


    // texto fadein 

    if(transparencia < 255){

      transparencia += 2;

    }


    // estrellas

    fill(255);

    ellipse(estrellaX1, estrellaY1,5,5);
    ellipse(estrellaX2, estrellaY2,5,5);
    ellipse(estrellaX3, estrellaY3,5,5);
    ellipse(estrellaX4, estrellaY4,5,5);
    ellipse(estrellaX5, estrellaY5,5,5);
    ellipse(estrellaX6, estrellaY6,5,5);
    ellipse(estrellaX7, estrellaY7,5,5);
    ellipse(estrellaX8, estrellaY8,5,5);
    ellipse(estrellaX9, estrellaY9,5,5);
    ellipse(estrellaX10, estrellaY10,5,5);


    // MOVIMIENTO

    estrellaY1 += 1;
    estrellaY2 += 2;
    estrellaY3 += 1.5;
    estrellaY4 += 2.5;
    estrellaY5 += 1;
    estrellaY6 += 3;
    estrellaY7 += 1.8;
    estrellaY8 += 2.2;
    estrellaY9 += 1.3;
    estrellaY10 += 2.7;
    
  
  
  
  
    
    // RESET

    if (estrellaY1 > 480) estrellaY1 = 0;
    if (estrellaY2 > 480) estrellaY2 = 0;
    if (estrellaY3 > 480) estrellaY3 = 0;
    if (estrellaY4 > 480) estrellaY4 = 0;
    if (estrellaY5 > 480) estrellaY5 = 0;
    if (estrellaY6 > 480) estrellaY6 = 0;
    if (estrellaY7 > 480) estrellaY7 = 0;
    if (estrellaY8 > 480) estrellaY8 = 0;
    if (estrellaY9 > 480) estrellaY9 = 0;
    if (estrellaY10 > 480) estrellaY10 = 0;

  }




  // PANTALLA 4













  else if (pantalla == 4) {

    image(img4,0,0,640,480);

    fill(255,255,255,180);

    rect(15,300,430,170,20);

    fill(0, transparencia);

    textSize(20);

    textAlign(LEFT);

    text("El jugador controla al Príncipe",30,340);

    text("mientras hace rodar el katamari",30,370);

    text("por casas, jardines y pueblos",30,400);

    text("para cumplir ciertos parámetros",30,430);

    text("establecidos por el Rey",30,460);


    if(transparencia < 255){

      transparencia += 2;

    }

  }


  // PANTALLA 5
 

  else if (pantalla == 5) {

    image(img5,0,0,640,480);

    fill(255);

    textAlign(CENTER);

    textSize(14);

    text(texto5.substring(0, letrasMostradas),428,70);


    if(frameCount % 3 == 0){

      if(letrasMostradas < texto5.length()){

        letrasMostradas++;

      }

    }


    // estrellardas final

    ellipse(e5x1,e5y1,5,5);
    ellipse(e5x2,e5y2,5,5);
    ellipse(e5x3,e5y3,5,5);
    ellipse(e5x4,e5y4,5,5);
    ellipse(e5x5,e5y5,5,5);
    ellipse(e5x6,e5y6,5,5);
    ellipse(e5x7,e5y7,5,5);
    ellipse(e5x8,e5y8,5,5);
    ellipse(e5x9,e5y9,5,5);
    ellipse(e5x10,e5y10,5,5);


    // MOVIMIENTO

    e5y1 += 1;
    e5y2 += 2;
    e5y3 += 1.5;
    e5y4 += 2.5;
    e5y5 += 1;
    e5y6 += 3;
    e5y7 += 1.8;
    e5y8 += 2.2;
    e5y9 += 1.3;
    e5y10 += 2.7;


    // resetear

    if (e5y1 > 480) e5y1 = 0;
    if (e5y2 > 480) e5y2 = 0;
    if (e5y3 > 480) e5y3 = 0;
    if (e5y4 > 480) e5y4 = 0;
    if (e5y5 > 480) e5y5 = 0;
    if (e5y6 > 480) e5y6 = 0;
    if (e5y7 > 480) e5y7 = 0;
    if (e5y8 > 480) e5y8 = 0;
    if (e5y9 > 480) e5y9 = 0;
    if (e5y10 > 480) e5y10 = 0;

  }

}




// click


void mousePressed() {

  // PANTALLA 1 -> 2

  if(pantalla == 1){

    pantalla = 2;

    tiempoPantalla = millis();

    letrasMostradas = 0;

  }



  // Solo si toca el boton reset 

  else if(pantalla == 5){

    if(mouseX > 220 && mouseX < 420 &&
       mouseY > 400 && mouseY < 460){

      pantalla = 1;

      tiempoPantalla = millis();

      letrasMostradas = 0;

      transparencia = 0;

    }

  }

}
