class Buttons {
  float circleButtonX, circleButtonY, circleButtonD;
boolean colorChange = false;
boolean colorChange2 = true;

Buttons(){
  circleButtonX = random(width);
  circleButtonY = random(height);
  circleButtonD = random(20,80);
  
  }
void display(){
    stroke(200,200,20,20);
  drawCircle();
 if(colorChange){
    fill(200,300,20);
  }else {
    fill(200,20,20);
  }
  
  if(colorChange2){
    fill(200, 100, 300);
  }else {
    fill(200,300,20);
  }
   }
   void drawCircle(){
 if(dist(mouseX, mouseY, circleButtonX, circleButtonY) < circleButtonD * .5){
   stroke(300,10,10);
 }else {
   stroke(200,200,20,20);
 }
 ellipse(circleButtonX, circleButtonY, circleButtonD, circleButtonD);
}

void mouseClicked(){
  if(dist(mouseX, mouseY, circleButtonX, circleButtonY) < circleButtonD * .5){
    colorChange = !colorChange;
  }
  if(colorChange){
    colorChange2 = !colorChange2;
     }
   }

}
