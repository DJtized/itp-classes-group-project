
class GameState {
  ArrayList<Brick> bricks = new ArrayList<Brick>();
  ArrayList<Brick> bricks2 = new ArrayList<Brick>();
  int brickLimit = 8;
  
  void setup() {
    for (int i = 0; i < brickLimit; i++) {
      bricks.add(new Brick());
      Brick brick = bricks.get(i);
      if (i > 0) {
        brick.prevPosX = bricks.get(i-1).posX + brick.sizeX;
      }
      brick.posX = brick.prevPosX + 50;
      brick.posY = 0;
      brick.draw();
      brick.prevPosX = brick.posX;
    }
      for (int i = 0; i < brickLimit; i++) {
      bricks2.add(new Brick());
      Brick brick = bricks2.get(i);
      if (i > 0) {
        brick.prevPosX = bricks2.get(i-1).posX + brick.sizeX;
      }
      brick.posX = brick.prevPosX + 50;
      brick.posY = 50;
      brick.draw();
      brick.prevPosX = brick.posX;
    }
  }
  void level1(){
    for (int i = 0; i < brickLimit; i++) {
    Brick brick = bricks.get(i);
    brick.draw();
    }
    for (int i = 0; i < brickLimit; i++) {
    Brick brick = bricks2.get(i);
    brick.draw();
    }
  }
}