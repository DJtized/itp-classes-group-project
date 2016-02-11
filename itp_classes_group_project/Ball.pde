class Ball{
  //Paddle paddle;
  int sizeX = 50; //Any sensible value
  int sizeY = 50; //Any sensible value
  int rad = sizeY/2; //Radius variable required for better hit detection
  float posX;
  float posY;
  int hitcount = 0; //debug
  //float velocity = ;
  
  void draw(){
    update();
    //print("PosX is currently: "+posX);
    //print("\n");
    //print("PosY is currently: "+posY);
    //print("\n");
    ellipse(mouseX,mouseY,sizeX,sizeY);
    
  }
  
  void update(){
    posX = mouseX;
    posY = mouseY;
  }
  
  void collision(){ //<>//
    
    //Use of rad variable to add/minus from centre of ball to calculate edge. This code is for the paddle
    if(posX >= paddle.posX-rad && posX <= paddle.posX+rad + paddle.sizeX && posY >= paddle.posY-rad){
      print("Ball hits paddle\n");//Debug
      //fill(255,0,0); //Debug
    }
    else{
      //fill(255); //Debug
    }
    
    ////Use of rad variable to add/minus from centre of ball to calculate edge. This code is for the brick
    //if(posX >= gameState.bricks.posX-rad && posX <= brick.posX+rad + brick.sizeX && posY >= brick.posY-rad){
    //  print("Ball hits brick "+hitcount+"\n");//Debug
    //  hitcount++;
    //  //fill(255,0,0); //Debug
    //}
    //else{
    //  //fill(255); //Debug
    //}
    
    //Use of rad variable to add/minus from centre of ball to calculate edge. This code is for the brick
    if(posX >= brick.posX-rad && posX <= brick.posX+rad + brick.sizeX && posY >= brick.posY-rad){
     print("Ball hits brick "+hitcount+"\n");//Debug
     hitcount++;
     //fill(255,0,0); //Debug
    }
    else{
     //fill(255); //Debug
    }
    
   
    
    /*PSEUDO:
    
    if (ball.posX >= paddle.width && ball.posX <= paddle.width && ball.posY >= paddle.height)
    {
      velocity = -velocity;
      print("Ball hits paddle");//Debug
    }
    
    if (ball.posX >= brick.width && ball.posX <= brick.width && ball.posY >= brick.height)
    {
      velocity = -velocity;
      print("Ball hits brick");//Debug
    }
    */
    
    //if (hitpaddle){
      //velocity = -velocity;
      //print("Ball hits paddle");//Debug
    //}
    
    //if (hitbrick){
      //velocity = -velocity;
      //print("Ball hits brick");//Debug
    //}
    
  }
}