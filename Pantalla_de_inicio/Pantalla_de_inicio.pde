int gameState = 0;  // 0: Pantalla de inicio, 1: Juego en progreso, segun el valor de "gameState" la pantalla de inicio reaccionara

void setup() {
  size(800, 600);
}

void draw() {
  if (gameState == 0) {
    displayStartScreen();
  } else if (gameState == 1) {
    runGame();
  }
}
//Aca se puede modificar el texto que aparecera en pantalla 
void displayStartScreen() {
  background(200, 220, 255);
  textSize(48);
  textAlign(CENTER);
  fill(0);
  text("¡DEFIENDE EL PASTEL!", width/2, height/2 - 100);
  
  textSize(24);
  text("Click para empezar", width/2, height/2);
  
  // Opcional: Instrucciones
  textSize(16);
  text("Usa el mouse para controlar el matamoscas y proteger el pastel de las moscas.", width/2, height/2 + 50);
}

void runGame() {
  background(255);
  // Aquí irá la lógica del juego
}

void mousePressed() {
  if (gameState == 0) {
    gameState = 1;  // Iniciar el juego
  }
}
