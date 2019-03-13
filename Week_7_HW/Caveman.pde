class Caveman {
/*
       Front   MLeft  MRight  Lie  Laugh 
Front   .2      .2    .2      .2      .2    
MLeft   .2      .2    .2      .2      .2   
MRight  .1      .1    .2      .4      .2   
Lie     .4      .2    .2      .1      .1    
Laugh   .2      .2    .4      .1      .1     
*/
int FRONT = 0;
int MLEFT = 1;
int MRIGHT = 2;
int LIE = 3;
int LAUGH = 4;
int MMOVE = 5;
int STATE = FRONT;

String[] movements = {"Front", "MLeft", "MRight", "Lie", "Laugh", "MMOVE"};
float[][] movementChance = {
{ .4, .1, .1, .01, .39}, 
{ .45, .05, .1, 0, .4}, 
{ .4, .05, .2, 0, .35 }, 
{ .4, .1, .1, 0, .4}, 
{ .1, 0, 0, .01, .89},
{ .4, .1, .1, 0, .4},
{.1,      0,     0,      .01,    .89}
};
boolean moveDirection = true;
//movement 
PVector velocity, position;
int walkSpeed = 4;
int laughSpeed = 3;
int Direction = 1;

int leftarray = 2;
int rightarray = 2;
int laugharray = 2;
int currentFrame = 0;
int animFrame = 0;
int frameNumber = 0;

PImage front = new PImage();
PImage lying = new PImage();
PImage[] left = new PImage[leftarray];
PImage[] right = new PImage[rightarray];
PImage[] laughing = new PImage[laugharray];



Caveman(){
  velocity = new PVector (0,0);
  position = new PVector (random(width), random(height));
  
  front = loadImage("Caveman (Front).png");
  left[0] = loadImage("Caveman (Left).png");
  left[1] = loadImage("Caveman (Left Walk).png");
  right[0] = loadImage("Caveman (Right).png");
  right[1] = loadImage("Caveman (Right Walk).png");
  lying    = loadImage("Caveman (Lying).png");
  laughing[0] = loadImage("Caveman (Laughing1).png");
  laughing[1] = loadImage("Caveman (Laughing2).png");
}

void update() {
  
  position.add(velocity);
  if(position.y < 0){
    position.y = height;
  }
  if(position.x > width){
    position.x = 0;
  }else if (position.x < 0){
    position.x = width;
  }
  if(moveDirection){
    Direction = (random(1) < .5) ? 1 : -1;
    moveDirection = false;
  }
  
switch(STATE){
 case 1:
 case 4:
 velocity = new PVector (0,0);
 break;
 case 2:
 velocity = new PVector (-Direction * walkSpeed, 0);
 case 0:
 default:
 getNewState();
 break;
 case 3:
 velocity = new PVector (-Direction * walkSpeed * .2, -laughSpeed);
 break;
  }
}

void display() {
 pushMatrix();
 translate(position.x, position.y);
 scale(Direction, 1);
 
 switch (STATE) {
 case 1:
 moveLeft();
 break;
 case 2:
 moveRight();
 break;
 case 3:
 image(lying,0,0);
 break;
 case 4:
 Laughing();
 case 5:
 case 0:
 default:
  image(front,0,0);
 break;
 }
 popMatrix();
}




void moveLeft(){
  background(350);
  image(left[currentFrame],0,0);
  if(frameCount%walkSpeed == 0){
   currentFrame ++;
   if(currentFrame >= leftarray){
    getNewState();
    moveDirection = true;
   }
  }
}

void moveRight(){
  background(450);
  image(right[currentFrame],0,0);
   if(frameCount%walkSpeed ==0){
   currentFrame ++;
   if(currentFrame >= rightarray){
    getNewState();
    moveDirection = true;
   }
  }
}


void Laughing(){
  background(300,20,20);
  image(laughing[currentFrame],0,0);
   if(frameCount%laughSpeed ==0){
   currentFrame ++;
   if(currentFrame >= laugharray) {
    getNewState();
    moveDirection = true;
   }
  }
 }
void getNewState(){
frameNumber = 0;
float rand = random(1);
float currentTotal = 0;
float[] range = movementChance[STATE];
for (int i = 0; i < range.length; i++){
currentTotal += range[i];
 if(rand < currentTotal){
  STATE = i;
  break;
 }
   }
 }
 
}
