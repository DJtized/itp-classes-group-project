Paddle paddle;
Ball ball;
void setup() {
  size(1280, 720);
  //rectMode(CENTER);
  paddle = new Paddle();
  ball = new Ball();
}

void draw() {
  background(255);
  paddle.draw();
  ball.draw();
  ball.collision();
}