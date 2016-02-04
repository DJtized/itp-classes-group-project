GameState gameState;
Paddle paddle;
Ball ball;
void setup() {
  size(1280, 720);
  gameState = new GameState();
  gameState.setup();
  //rectMode(CENTER);
  paddle = new Paddle();
  ball = new Ball();
}

void draw() {
  background(255);
  gameState.level1();
  fill(255);
  paddle.draw();
  ball.draw();
  ball.collision();

}