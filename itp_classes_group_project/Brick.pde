class Brick{
  int posX;
  int posY;
  int prevPosX;
  int prevPosY;
  int sizeX = 40;
  int sizeY = 20;
  
  void draw(float r, float g, float b){
    fill(r, g, b);
    rect(posX, posY, sizeX, sizeY);
  }
  
  void update(){
    
  }
  
  void collision(){
  }
}