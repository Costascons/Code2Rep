float x,y;
float dist;
boolean circleClick = false;

void setup(){
  size(600,400);
  background(0);
 
  
  if(circleClick){
    fill(300,200,200);
  }else {
    fill(200,20,20);
  }
}

void draw(){
   x = width/2-50;
   y = height/2-50;
   dist = dist(x,y, width/2,height/2);
   
   stroke(200,200,20);
  fill(200,20,20);
  ellipse(x,y,100,100);
 }
 
void mouseClicked(){
  if (dist(mouseX, mouseY, x,y) < 50){
         if(circleClick){
           circleClick = false;
         }else {
           circleClick = true;
         }
       }
}
