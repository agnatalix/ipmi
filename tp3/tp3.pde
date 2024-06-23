//https://youtu.be/F1MwBPYUJNw
PImage img2; 
int cantidad = 20;
int tamaño;
int diametroInicial = 17; // tamaño inicial de los círculos
boolean agrandar = false; // variable para controlar si se debe agrandar los círculos
boolean mostrarBoton = false; // Variable para controlar la visibilidad del botón "Reiniciar"

void setup() {
  size(800, 400);
  img2 = loadImage("img2.png");
  tamaño = width / cantidad;  
}

void draw() {
  background(250);
   println("X: ", mouseX, "Y: ", mouseY);
  // imagen
  image(img2, 0, 0);
// dibujar cuadrados
for (int x = cantidad/2; x < cantidad; x++) {
  for (int y = 0; y < cantidad; y++) {
    if ((x + y) % 2 == 0) {
      fill(0);
    } else {
      fill(255);
    }
    rect(x * tamaño, y * tamaño, tamaño, tamaño);
  }
}

// dibujar círculos
for (int x = cantidad/2; x < cantidad; x++) {
  for (int y = 0; y < cantidad; y++) {
    if ((x + y) % 2 == 0) {
      fill(255);
    } else {
      fill(0);
    }
    
    // Llamar a la función para calcular el diámetro
    float diametro = diametroInicial; // mantener el tamaño inicial por defecto
    
    if (agrandar) {
      diametro = calcularDiametro(x, y);
    }
    
    ellipse(x * tamaño + tamaño / 2, y * tamaño + tamaño / 2, diametro, diametro);
  }
}

  
  // Dibujar el botón de "Reiniciar" si mostrarBoton es true
  if (mostrarBoton) {
    fill(0);
    rect(width - 520, 0, 120, 40);
    fill(255);
    textAlign(CENTER, CENTER);
    text("Reiniciar", width - 460, 20);
  }
}

// Calcular el diámetro basado en la distancia del ratón
float calcularDiametro(int x, int y) {
  float distancia = dist(mouseX, mouseY, x * tamaño + tamaño / 2, y * tamaño + tamaño / 2);
  float diametro = map(distancia, 0, width / 2, diametroInicial, diametroInicial * 2);
  return diametro;
}

void mousePressed() {

  if (mouseX >= width - 120 && mouseX <= width - 20 &&
      mouseY >= 20 && mouseY <= 60) {
    // Restaurar el estado inicial
    agrandar = false;
    mostrarBoton = false;
  } else {
 
    agrandar = !agrandar;
 
    mostrarBoton = true;
  }
}
