
class GameState {
  ArrayList<Brick> bricks = new ArrayList<Brick>();
  int brickLimit = 10;
  
  void level1() {
    for (int i = 0; i < brickLimit; i++) {
      bricks.add(new Brick());
      Brick brick = bricks.get(i);
      if (i > 0) {
        brick.prevPosX = bricks.get(i-1).posX + 40;
      }
      brick.posX = brick.prevPosX + 20;
      brick.posY = 0;
      brick.draw(random(0, 255), random(0, 255), random(0, 255));
      brick.prevPosX = brick.posX;
    }
  }
}