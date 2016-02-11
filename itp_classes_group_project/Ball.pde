class Ball{
  //Paddle paddle;
  int sizeX = 50; //Any sensible value
  int sizeY = 50; //Any sensible value
  int rad = sizeY/2; //Radius variable required for better hit detection
  float posX = width/2;
  float posY = height/2;
  int hitcount = 0; //debug
  int hitcount2 = 0; //debug
  int hitcount3 = 0; //debug
  int hitcount4 = 0; //debug
  int hitcount5 = 0; //debug
  float velocityX = 6;
  float velocityY = 6;
  
  void draw(){
    update();
    //print("PosX is currently: "+posX);
    //print("\n");
    //print("PosY is currently: "+posY);
    //print("\n");
    ellipse(posX,posY,sizeX,sizeY);
    
  }
  
  void update(){
    //posX = mouseX; //Debug
    //posY = mouseY;
    posX += velocityX;
    posY += velocityY;
  }
  
  void collision(){ //<>//
    
    //IF statements for the ball to bounce off the sides of the window
    if(posX > width || posX < 0){
      velocityX = -velocityX;
    }
    
    if(posY > height || posY < 0){
      velocityY = -velocityY;
    }
    
    //Use of rad variable to add/minus from centre of ball to calculate edge. This code is for the paddle
    if(posX >= paddle.posX-rad && posX <= paddle.posX+rad + paddle.sizeX && posY >= paddle.posY-rad){
      print("Ball hits paddle\n");//Debug
      velocityX = -velocityX;
      velocityY = -velocityY;
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
    
    //Use of rad variable to add/minus from centre of ball to calculate edge. This code is for the brick row 1
    if(posY >= brick.posY-rad && posY <= brick.posY+rad + brick.sizeY && posX >= brick.posX-rad){
     print("Ball hits brick row 1 "+hitcount+"\n");//Debug
     hitcount++;//Debug
     //fill(255,0,0); //Debug
    }
    else{
     //fill(255); //Debug
    }
    
    //Use of rad variable to add/minus from centre of ball to calculate edge. This code is for the brick row 2
    if(posY >= brick.posY-rad+brick.sizeY && posY <= brick.posY+rad + brick.sizeY*2 && posX >= brick.posX-rad){
     print("Ball hits brick row 2 "+hitcount2+"\n");//Debug
     hitcount2++;
     //fill(255,0,0); //Debug
    }
    else{
     //fill(255); //Debug
    }
    
    //Use of rad variable to add/minus from centre of ball to calculate edge. This code is for the brick row 3
    if(posY >= brick.posY-rad+brick.sizeY*2 && posY <= brick.posY+rad + brick.sizeY*3 && posX >= brick.posX-rad){
     print("Ball hits brick row 3 "+hitcount3+"\n");//Debug
     hitcount3++;
     //fill(255,0,0); //Debug
    }
    else{
     //fill(255); //Debug
    }
    
    //Use of rad variable to add/minus from centre of ball to calculate edge. This code is for the brick row 4
    if(posY >= brick.posY-rad+brick.sizeY*3 && posY <= brick.posY+rad + brick.sizeY*4 && posX >= brick.posX-rad){
     print("Ball hits brick row 4 "+hitcount4+"\n");//Debug
     hitcount4++;
     //fill(255,0,0); //Debug
    }
    else{
     //fill(255); //Debug
    }
    
    //Use of rad variable to add/minus from centre of ball to calculate edge. This code is for the brick row 5
    if(posY >= brick.posY-rad+brick.sizeY*4 && posY <= brick.posY+rad + brick.sizeY*5 && posX >= brick.posX-rad){
     print("Ball hits brick row 5 "+hitcount5+"\n");//Debug
     hitcount5++;
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