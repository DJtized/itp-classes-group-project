class Brick{
  int posX;
  int posY;
  int prevPosX;
  int prevPosY;
  int sizeX = 100;
  int sizeY = 35;
  color brickRGB = color(random(0,255), random(0, 255), random(0, 255));
  
  void draw(){
    fill(brickRGB);
    rect(posX, posY, sizeX, sizeY);
  }
  
  void update(){
    
  }
  
  void collision(){
  }
}