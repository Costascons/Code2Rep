 class Circle {
  PVector velocity, location;
  float circleButtonX, circleButtonY, circleButtonD;
  boolean circleClick = false;
  color circleColor;
  
  Circle(float circleButtonX150, float circleButtonY150, float circleButtonD80) {
  circleButtonX = circleButtonX150;
  circleButtonY = circleButtonY150;
  circleButtonD = circleButtonD80;
  }
  
  void display(){
    location = new PVector(random(width), random(height/2));
    velocity = new PVector(random(-5,5), random(-5,5));
    if(circleClick){
      circleColor = color(150,200,30,16);
      ellipse(location.x, location.y,10,10);
    }else{
      circleColor = color(240,20,20,15);
    }
      fill(circleColor);
      ellipse(circleButtonX, circleButtonY, circleButtonD, circleButtonD);
      
      //For Button Icon
      float circleBuff = circleButtonD * .1;
      fill(200,20,20);
      ellipse(circleButtonX + circleBuff* 0.3, circleButtonY +circleBuff* 0.3, circleButtonD - circleBuff*4, circleButtonD - circleBuff*4);
    }
    
    void move(){
    location.add(velocity);
  }
  
  void hitDetection(){
    if(dist(mouseX, mouseY, circleButtonX, circleButtonY) < circleButtonD * .5){
      circleColor = color(200);
    }else {
      circleColor = color(240,20,20,15);
    }
  }
  void mousePressed(){
    if(dist(mouseX, mouseY, circleButtonX, circleButtonY) < circleButtonD * .5){
      if(circleClick){
           circleClick = false;
         }else {
           circleClick = true;
         }
    }
  }
 }
  
  
 
