//fuente
PFont fuente ;

//textos
int reinicio = 1;
int tamañotext1= 0;
int posiXText2 = -200;
int posiXRect2 =-220;
int posiYText3 = -250;
int posiYRect3 = -260;

// imagenes
PImage img1, img2, img3;

//Boton
color botonColor = color(255);
int botonPosX = 360;
int botonPosY = 400;
int botonAncho = 200;
int botonAlto = 50;

// colores
color fondoTransp = color(255, 255, 255, 180);
color fondoTransp2 = color(255, 255, 255, 100);
color fondoTransp3 = color(93, 173, 226, 100);
void setup () {
  size (640, 480);
  img1 = loadImage("77baba2c3d2bb8e35d9cf4eb20e5952e8569aa71.jpeg");
  img2 = loadImage("mapping obelisco.jpeg");
  img3 = loadImage("1659419156928.jpg");
  
  //fuente
  fuente = createFont ("ArialMT", 20);
}
void draw () {
  textFont (fuente, 18);
  println("X: ", mouseX, "Y: ", mouseY);
  background(250);

  if (frameCount / 60 < 7) {

    // fondo y fondo texto
    image(img1, 0, 0, 640, 480);

    noStroke();
    fill(fondoTransp);
    rect(355, 50, 240, 300);

    //texto 1
    fill(34, 113, 179);
    textAlign(CENTER);
    textSize(18);
    text("El Obelisco de la Ciudad de Buenos Aires alentó a la Selección un día antes de cada partido del Mundial 2022 con un mapping especialmente diseñado por Nicolas Bernaudo", 372, 100, 200, tamañotext1);

    if (tamañotext1 != 220) {
      tamañotext1 = tamañotext1 + 1 ;
    }
  } else if (frameCount / 60 < 14) {
    image(img2, 0, 0, 640, 480);
    noStroke();
    fill(fondoTransp);

    //Cudrado texto 2
    rect(posiXRect2, 90, 240, 240);

    if (posiXRect2 != 25) {
      posiXRect2 = posiXRect2 + 1 ;
    }

    //texto 2
    fill(34, 113, 179);
    textAlign(CENTER);
    textSize(18);
    text("Elegí esta obra porque haber visto ganar a la seleccion fue hermoso y muy emocionante y porque el obelisco fue el lugar de reunion y festejo del pueblo y del equipo", posiXText2, 120, 200, 200);

    if (posiXText2 != 40) {
      posiXText2 = posiXText2 + 1 ;
    }
  } else if (frameCount / 60 < 100000) {
    //imagenes fondo y artista
    image(img2, 0, 0, 640, 480);
    noStroke();
    fill(fondoTransp2);
    rect(0, 0, 640, 480);
    image (img3, 50, 100, 266, 266);

    // Cuadro texto artista
    noStroke();
    fill(fondoTransp3);
    rect(355, posiYRect3, 260, 280);

    if (posiYRect3 != 90) {
      posiYRect3 = posiYRect3 + 1 ;
    }

    //texto artista
    fill(0);
    textAlign(CENTER);
    textSize(18);
    text("Nicolas Bernaudo es diseñador gráfico y artista audiovisual especializado en mapping. A lo largo de su carrera ha trabajado con artistas y marcas como: Adidas, Shell, Renault, Soda Stereo, Gustavo Cerati, Babasonicos y en multiples espacios públicos", 360, posiYText3, 250, 250);

    if (posiYText3 != 120) {
      posiYText3 = posiYText3 + 1 ;
    }
    //boton
    fill(botonColor);
    noStroke();
    rect(botonPosX, botonPosY, botonAncho, botonAlto, 100);
    fill(0);
    textSize(20);
    textAlign(CENTER);
    text("Reiniciar »", 460, 432);
  }
}
//boton click
void mouseClicked() {
  if (mouseX > botonPosX && mouseX < botonPosX + botonAncho && mouseY > botonPosY && mouseY < botonPosY + botonAlto) {
    frameCount = reinicio;

    tamañotext1= 0;
    posiXText2 = -200;
    posiXRect2 =-220;
    posiYText3 = -250;
    posiYRect3 = -260;
  }
}

//boton hover
void mouseMoved() {
  if (mouseX > botonPosX && mouseX < botonPosX + botonAncho && mouseY > botonPosY && mouseY < botonPosY + botonAlto) {
    botonColor = color(200);
  } else {
    botonColor = color(255);
  }
}
