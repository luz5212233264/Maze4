int buttonX = 150;   // Posición en x del botón
int buttonY = 150;   // Posición en y del botón
int buttonSize = 60; // Tamaño del botón (lado del cuadrado)

boolean boton = false; // Variable booleana para el botón

void setup() {
  size(400, 400); // Tamaño de la ventana
  background(0); // Fondo negro
}

void draw() {
  dibujarBoton();
}

void mouseClicked() {
  if (mouseSobreBoton()) {
    boton = !boton; // Cambia el estado del botón
  }
}

void dibujarBoton() {
  background(0); // Borra el fondo en cada ciclo de dibujo
  if (boton) {
    fill(255, 0, 0); // Relleno rojo si el botón está activo
  } else {
    fill(255, 255, 0); // Relleno amarillo si el botón no está activo
  }
  rect(buttonX, buttonY, buttonSize, buttonSize); // Dibuja el botón
}

boolean mouseSobreBoton() {
  return mouseX > buttonX - buttonSize/2 && mouseX < buttonX + buttonSize/2 &&
         mouseY > buttonY - buttonSize/2 && mouseY < buttonY + buttonSize/2;
}
