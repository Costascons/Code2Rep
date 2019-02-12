class Square {
  float squareButtonX, squareButtonY, squareButtonD;
  boolean squareClick = false;
  
  Square(float squareButtonX400, float squareButtonY100, float squareButtonD100) {
  squareButtonX = squareButtonX400;
  squareButtonY = squareButtonY100;
  squareButtonD = squareButtonD100;
  }
  
  void display(){
    rect(squareButtonX, squareButtonY, squareButtonD, squareButtonD);
  }
}
