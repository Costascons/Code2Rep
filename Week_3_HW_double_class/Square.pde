 class Square {
  PVector velocity, location;
  float squareButtonX, squareButtonY, squareButtonD;
  boolean squareClick = false;
  color squareColor;
  
  Square(float squareButtonX150, float squareButtonY150, float squareButtonD80) {
  squareButtonX = squareButtonX150;
  squareButtonY = squareButtonY150;
  squareButtonD = squareButtonD80;
  }
  
  void display(){
    location = new PVector(random(width), random(height));
    velocity = new PVector(random(-5,5), random(-5,5));
    if(squareClick){
      squareColor = color(150,200,30,16);
      fill(200);
      rect(location.x, location.y,10,10);
    }else{
      squareColor = color(240,20,20,15);
    }
      rectMode(CORNER);
      fill(squareColor);
      rect(squareButtonX, squareButtonY, squareButtonD, squareButtonD);
      
      //For Button Icon
      float rectBuffer = squareButtonD * .1;
      fill(200,20,20);
      rect(squareButtonX + rectBuffer* 2, squareButtonY + rectBuffer*2, squareButtonD - rectBuffer*4, squareButtonD - rectBuffer*4);
    }
    
    void move(){
    location.add(velocity);
  }
  
  void hitDetection(){
    if (mouseX > squareButtonX && mouseX < squareButtonX + squareButtonD &&
       mouseY > squareButtonY && mouseY < squareButtonY + squareButtonD) {
         squareColor = color(30);
       }else {
         squareColor = color(300,200,200,30);
       }
  }
  
  void mousePressed(){
    if (mouseX > squareButtonX && mouseX < squareButtonX + squareButtonD &&
           mouseY > squareButtonY && mouseY < squareButtonY + squareButtonD) {
         if(squareClick){
           squareClick = false;
         }else {
           squareClick = true;
         }
       }
  }
  
}
