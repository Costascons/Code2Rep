class Circle {
  float circleButtonX, circleButtonY, circleButtonD;
  boolean circleClick = false;
  
  Circle(float circleButtonX150, float circleButtonY150, float circleButtonD80) {
  circleButtonX = circleButtonX150;
  circleButtonY = circleButtonY150;
  circleButtonD = circleButtonD80;
  }
  
  void display(){
    ellipse(circleButtonX, circleButtonY, circleButtonD, circleButtonD);
  }
}
