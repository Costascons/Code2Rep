class Buttons {
PVector velocity, location;
float circleButtonX, circleButtonY, circleButtonD;
float squareButtonX, squareButtonY, squareButtonD;
boolean circleClick = false;
boolean squareClick = false;  
color squareColor;
color circleColor;


 Buttons(float circleButtonX150, float circleButtonY150, float circleButtonD80,
         float squareButtonX400, float squareButtonY100, float squareButtonD100 ){
  location = new PVector(random(width/2), random(height/2));
  velocity = new PVector(random(-5,5), random(-5,5));
  circleButtonX = circleButtonX150;
  circleButtonY = circleButtonY150;
  circleButtonD = circleButtonD80;

  squareButtonX = squareButtonX400;
  squareButtonY = squareButtonY100;
  squareButtonD = squareButtonD100;
  
 }
 
 void display(){
   if(circleClick){
     circleColor = color(150,200,30,16);
     ellipse(location.x, location.y,10,10);
   } else {
     circleColor = color(240,20,20,15);
   }
   
   if(squareClick){
     squareColor = color(150,230,50,25);
     rect(location.x, location.y,10,10);
   } else {
     squareColor = color(300,200,200,30);
   }
   rectMode(CORNER);
   fill(circleColor);
   ellipse(circleButtonX, circleButtonY, circleButtonD, circleButtonD);
   fill(squareColor);
   rect(squareButtonX, squareButtonY, squareButtonD, squareButtonD);
//For button icons
   float circleBuff = circleButtonD * .1;
  float rectBuffer = squareButtonD * .1;
  fill(200,20,20);
  rect(squareButtonX + rectBuffer* 2, squareButtonY + rectBuffer*2, squareButtonD - rectBuffer*4, squareButtonD - rectBuffer*4);
  ellipse(circleButtonX + circleBuff* 0.3, circleButtonY +circleBuff* 0.3, circleButtonD - circleBuff*4, circleButtonD - circleBuff*4);
   
 }
 
 void move(){
   location.add(velocity);
 }
 
 void hitDetection(){
   if (mouseX > circleButtonX && mouseX < circleButtonX + circleButtonD &&
       mouseY > circleButtonY && mouseY < circleButtonY + circleButtonD) {
         circleColor = color(200);
       }else {
         circleColor = color(240,20,20,15);
       }
       if (mouseX > squareButtonX && mouseX < squareButtonX + squareButtonD &&
       mouseY > squareButtonY && mouseY < squareButtonY + squareButtonD) {
         squareColor = color(30);
       }else {
         squareColor = color(300,200,200,30);
       }
       
    }
 void mousePressed(){
   if (mouseX > circleButtonX && mouseX < circleButtonX + circleButtonD &&
       mouseY > circleButtonY && mouseY < circleButtonY + circleButtonD) {
         if(circleClick){
           circleClick = false;
         }else {
           circleClick = true;
         }
       }
       
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
