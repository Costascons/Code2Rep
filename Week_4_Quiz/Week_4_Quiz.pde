//Commented out code here shows how I made the circle first and then put it in a class.
int arrayLength = 50;
Buttons [] circles = new Buttons[arrayLength];

//float circleButtonX, circleButtonY, circleButtonD;
//boolean colorChange = false;
//boolean colorChange2 = true;

void setup(){
  size(600,400);
  for (int i = 0; i < arrayLength; i++){
    circles[i] = new Buttons();
  }
  //stroke(200,200,20,20);
  //circleButtonX = 150;
  //circleButtonY = 150;
  //circleButtonD = 80;
 
}

void draw(){
  background(0);
  for(int i =0; i < arrayLength; i++){
    circles[i].display();
    circles[i].drawCircle();
  }
  
 // drawCircle();
 //if(colorChange){
 //   fill(200,300,20);
 // }else {
 //   fill(200,20,20);
 // }
  
 // if(colorChange2){
 //   fill(200, 100, 300);
 // }else {
 //   fill(200,300,20);
 // }
  
 }
 
void mouseClicked(){
   for(int i =0; i < arrayLength; i++){
    circles[i].mouseClicked();
   }
}
 
//void drawCircle(){
// if(dist(mouseX, mouseY, circleButtonX, circleButtonY) < circleButtonD * .5){
//   stroke(300,10,10);
// }else {
//   stroke(200,200,20,20);
// }
// ellipse(circleButtonX, circleButtonY, circleButtonD, circleButtonD);
//}

//void mouseClicked(){
//  if(dist(mouseX, mouseY, circleButtonX, circleButtonY) < circleButtonD * .5){
//    colorChange = !colorChange;
//  }
//  if(colorChange){
//    colorChange2 = !colorChange2;
//  }
//}
