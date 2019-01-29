boolean circleClick = false;
boolean squareClick = false;
color circColor, sqrColor;
float circleButtonX, circleButtonY;
float squareButtonX, squareButtonY;

void setup(){
  size(600,300);
}

void draw(){
   fill(255);
 circleClick();
 squareClick();
 
 

 if(circleClick){
  background(255,255,0); 
 }else{
   background(0);
 }
 
 if(squareClick){
  background(300, 300,0); 
 }else{
   background(0);
 }
 rect(width/2+100,height/3,100,100);
 ellipse(width/2-100,height/3+50,100,100);
 
   }
   
   void circleClick(){
  if(mouseX > width/2 -200 && 
    mouseX < width/2 +200 && 
    mouseY > height/2 - 200 && 
    mouseY < height/2 + 200) {
    circleClick = true;
 }else{
   circleClick = false;
 }
}

 void squareClick(){
  if(mouseX > width/+100 && 
    mouseX < width/2 +100 && 
    mouseY > height/2 - 100 && 
    mouseY < height/2 + 100) {
    squareClick = true;
 }else{
   squareClick = false;
 }
}
 
