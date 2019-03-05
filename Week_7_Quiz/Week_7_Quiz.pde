float ballW = 60;
float ballH = 60;
PVector velocity = new PVector (1,0);
PVector acceleration = new PVector (.1,0); 
PVector position = new PVector (200,200);
boolean isCaught = false;


void setup(){
 size(800,800);
 //position = new PVector(200,200);
 //velocity = new PVector(1,5);
 //acceleration = new PVector(0,1);
//checkBoundaries();
  
}

void draw(){
  background(0);
  ellipse(position.x, position.y, ballW, ballH);
  
 position.add(velocity);
 velocity.add(acceleration);
 //acceleration.rotate(radians(1));

  
}


void mousePressed(){
 if(dist(mouseX, mouseY, 200, 200) < ballW/2){
position = new PVector(200,200);
 velocity = new PVector(1,5);
 acceleration = new PVector(0,1);}
}

//void checkBoundaries(){
//  if(position.x > ballW - ballW/2){
//      position.x = ballW - ballW/2;
//      velocity.x *= -1; 
//    }
//    if(position.x < 0 + ballW/2) {
//      position.x = 0 + ballW/2;
//      velocity.x *= -1; 
//    }
//    if(position.y > ballH - ballW/2){
//      position.y = ballH - ballW/2;
//      velocity.y *= -1;   
//    }
//    if(position.y < 0 + ballW/2){
//      position.y = 0 + ballW/2;
//      velocity.y *= -1; 
//    } 
//}
