class Brick{
  int posX;
  int posY;
  int sizeX = width/10;
  int sizeY = sizeX/2;
  int prevPosX;
  int prevPosY;
  color brickRGB = color(random(0,255), random(0, 255), random(0, 255));
  
  void draw(){
    strokeWeight(3);
    fill(brickRGB);
    rect(posX, posY, sizeX, sizeY);
  }
  
  void update(){
    
  }
  
  void collision(){
  }
}