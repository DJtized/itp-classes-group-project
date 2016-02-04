class Paddle{
  
  int sizeX = 200; //Can be of any value, just make it sensible
  int sizeY = 25; //Can be of any value, just make it sensible
  float posX = width/2;
  float posY = height*.95;

  
  void draw(){
    //rectMode(CENTER);
    //rect(mouseX,height*.95,sizeX,sizeY); //Drawing of a rectangle that acts as the paddle.
    rect(posX,posY,sizeX,sizeY); //Temporary paddle to test hit detection
}
  
  void update(){
    
  }
  
  void control(){
    
  }
  
  void collision(){
    
  }
}