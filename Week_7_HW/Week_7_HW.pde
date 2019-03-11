/*
       Front   MLeft  MRight  Lie  Laugh 
Front   .2      .2    .2      .2      .2    
MLeft   .2      .2    .2      .2      .2   
MRight  .1      .1    .2      .4      .2   
Lie     .4      .2    .2      .1      .1    
Laugh   .2      .2    .4      .1      .1     
*/
String[] movements = {"Front", "MLeft", "MRight", "Lie", "Laugh"};
float[][] movementChance = {
{.2,     .2,    .2,      .2,     .2},
{.2,     .2,    .2,      .2,     .2},
{.1,     .1,    .2,      .4,     .2},
{.4,     .2,    .2,      .1,     .1},
{.2,     .2,    .4,      .1,     .1} 
};

int frontarray = 1;
int leftarray = 2;
int rightarray = 2;
int lyingarray = 1;
int laugharray = 2;
int currentFrame = 0;
int walkSpeed = 8;
int laughSpeed = 6;
int frameNumber = 0;
PImage[] front = new PImage[frontarray];
PImage[] left = new PImage[leftarray];
PImage[] right = new PImage[rightarray];
PImage[] lying = new PImage[lyingarray];
PImage[] laughing = new PImage[laugharray];
int FRONT = 0;
int MLEFT = 1;
int MRIGHT = 2;
int LIE = 3;
int LAUGH = 4;
int STATE = 0;


void setup(){
  size(600,600);
  
  front[0] = loadImage("Caveman (Front).png");
  left[0] = loadImage("Caveman (Left).png");
  left[1] = loadImage("Caveman (Left Walk).png");
  right[0] = loadImage("Caveman (Right).png");
  right[1] = loadImage("Caveman (Right Walk).png");
  lying[0] = loadImage("Caveman (Lying).png");
  laughing[0] = loadImage("Caveman (Laughing1).png");
  laughing[1] = loadImage("Caveman (Laughing2).png");
}

void draw(){
switch(STATE){
 case 1: 
 moveLeft();
 break;
 case 2: 
 moveRight();
 break;
 case 3:
 Lying();
 break;
 case 4:
 Laughing();
 break;
 default:
 Front();
 break;
}

for (int moves = 0; moves < 5; moves ++){
  float rand = random(1);
  float current = 0;
  float[] whatMovementToMake = movementChance[STATE];
  for(int i = 0; i < whatMovementToMake.length; i ++){
    currentFrame += whatMovementToMake[i];
    if (rand < current) {
    STATE = i;
    break;
    }
  }
  println(moves+1, movements[STATE]);
}  

}




void Front(){
  background(200);
  image(front[currentFrame],100,100);
  
}


void moveLeft(){
  background(350);
  image(left[currentFrame],200,100);
  if(frameCount%walkSpeed ==0){
   currentFrame ++;
   if(currentFrame >= leftarray) STATE = MRIGHT;
  }
}

void moveRight(){
  background(450);
  image(right[currentFrame],200,100);
   if(frameCount%walkSpeed ==0){
   currentFrame ++;
   if(currentFrame >= rightarray) STATE = LAUGH;
  }
}

void Lying(){
  background(300,20,20);
  image(lying[currentFrame],200,100);
  if(currentFrame >= laugharray) STATE = MLEFT;
}
void Laughing(){
  background(300,20,20);
  image(laughing[currentFrame],200,100);
   if(frameCount%laughSpeed ==0){
   if(currentFrame >= laugharray) STATE = LIE;
   currentFrame ++;
  }
}

void keyPressed(){
 if(STATE == FRONT){
   if(key == 'a'){
    STATE = MLEFT;
    currentFrame = 0;
   }
   if(key == 'd'){
     STATE = MRIGHT;
     currentFrame = 0;
   }
 }
  if(key == 'l'){
     STATE = LAUGH;
     currentFrame = 0;
   }
  if(key == 's'){
    STATE = LIE;
    currentFrame = 0;
  }
}
