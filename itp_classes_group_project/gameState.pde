
class GameState {
  ArrayList<Brick> bricks = new ArrayList<Brick>(); //each arrayList controls one row of bricks
  ArrayList<Brick> bricks2 = new ArrayList<Brick>();
  ArrayList<Brick> bricks3 = new ArrayList<Brick>();
  ArrayList<Brick> bricks4 = new ArrayList<Brick>();
  ArrayList<Brick> bricks5 = new ArrayList<Brick>();
  int brickLimit = 10; //number of bricks per row
  
  void setup() {
    for (int i = 0; i < brickLimit; i++) {
      bricks.add(new Brick());
      Brick brick = bricks.get(i);
      if (i > 0) {
        brick.prevPosX = bricks.get(i-1).posX + brick.sizeX; //sets the position of each brick to be next to the previous one
      }
      brick.posX = brick.prevPosX;
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
      brick.posX = brick.prevPosX;
      brick.posY = brick.sizeY;
      brick.draw();
      brick.prevPosX = brick.posX;
    }
      for (int i = 0; i < brickLimit; i++) {
      bricks3.add(new Brick());
      Brick brick = bricks3.get(i);
      if (i > 0) {
        brick.prevPosX = bricks3.get(i-1).posX + brick.sizeX;
      }
      brick.posX = brick.prevPosX;
      brick.posY = 2*brick.sizeY;
      brick.draw();
      brick.prevPosX = brick.posX;
    }
      for (int i = 0; i < brickLimit; i++) {
      bricks4.add(new Brick());
      Brick brick = bricks4.get(i);
      if (i > 0) {
        brick.prevPosX = bricks4.get(i-1).posX + brick.sizeX;
      }
      brick.posX = brick.prevPosX;
      brick.posY = 3*brick.sizeY;
      brick.draw();
      brick.prevPosX = brick.posX;
    }
          for (int i = 0; i < brickLimit; i++) {
      bricks5.add(new Brick());
      Brick brick = bricks5.get(i);
      if (i > 0) {
        brick.prevPosX = bricks5.get(i-1).posX + brick.sizeX;
      }
      brick.posX = brick.prevPosX;
      brick.posY = 4*brick.sizeY;
      brick.draw();
      brick.prevPosX = brick.posX;
  }
  }
  void level1(){
    for (int i = 0; i < brickLimit; i++) { //each loop draws a row of bricks
    Brick brick = bricks.get(i);
    brick.draw();
    }
    for (int i = 0; i < brickLimit; i++) {
    Brick brick = bricks2.get(i);
    brick.draw();
    }
    for (int i = 0; i < brickLimit; i++) {
    Brick brick = bricks3.get(i);
    brick.draw();
    }
    for (int i = 0; i < brickLimit; i++) {
    Brick brick = bricks4.get(i);
    brick.draw();
    }
    for (int i = 0; i < brickLimit; i++) {
    Brick brick = bricks5.get(i);
    brick.draw();
    }
  }
}