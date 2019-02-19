class TimeButton {

  float squareButtonX, squareButtonY, squareButtonD;
  float startTime, endTime;
  float totalTime;
  boolean colorSwitch = false;
  boolean Active = false;
  
  TimeButton(){
  squareButtonX = random(width/2);
  squareButtonY = random(height);
  squareButtonD = random(20,80);
  totalTime = random(0.2,5);
  totalTime *= 1000;
  }
  
  void display(){
  strokeWeight(1);
  stroke(200,300,20,20);
  drawSquare();

  if(colorSwitch){
    fill(200,250,20);
  }else {
    fill(0,200,20);
  }
  
  if (Active){
    switchBackEndTime();
    colorSwitch = true;
  }else {
    colorSwitch = false;
  }

    }
    
 void drawSquare(){
   if (mouseX > squareButtonX && mouseX < squareButtonX + squareButtonD &&
       mouseY > squareButtonY && mouseY < squareButtonY + squareButtonD) {
   stroke(300,10,10);
 }else {
   stroke(200,200,20);
 }
   rect(squareButtonX, squareButtonY, squareButtonD, squareButtonD);
 }
 
 void mouseClicked(){
   if (mouseX > squareButtonX && mouseX < squareButtonX + squareButtonD &&
       mouseY > squareButtonY && mouseY < squareButtonY + squareButtonD) {
         colorSwitch = !colorSwitch;
         Active = true;
         startTime = millis();
         endTime = millis() + totalTime;
       }
 }
 
 void switchBackEndTime() {
  if (millis() > endTime) {
    Active = false;
    }
  }
}
