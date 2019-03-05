/*
       Front  SLeft  MLeft  SRight  MRight  Lie  Laugh1  Laugh2
Front   .2      .2    .2      .2      .2     .2    .2      .2
SLeft   .4      .1    .25     .25     .25    .25   .1      .1
MLeft   .2      .2    .2      .2      .2     .2    .2      .2
SRight  .4      .1    .25     .25     .25    .25   .1      .1
MRight  .1      .1    .1      .2      .2     .33   .33     .33
Lie     .2      .2    .2      .2      .2     .2    .2      .2
Laugh1  .2      .2    .1      .1      .1     .33   .33     .33
Laugh2  .2      .2    .1      .1      .1     .33   .33     .33
*/
String[] movements = {"Front", "SLeft", "MLeft", "SRight", "MRight", "Lie", "Laugh1", "Laugh2"};
float[][] movementChance = {
{.2, .2, .2, .2, .2, .2, .2, .2},
{.4, .1, .25, .25, .25, .25, .1,  .1},
{.2, .2, .2, .2, .2, .2, .2, .2},
{.4, .1, .25, .25, .25, .25, .1, .1},
{.1, .1, .1, .2, .2, .33, .33, .33},
{.2, .2, .2, .2, .2, .2,  .2,  .2},
{.2, .2, .1, .1, .1, .33, .33, .33},
{.2, .2, .1, .1, .1, .33, .33, .33}  
};

int frontarray = 1;
int leftarray = 2;
int rightarray = 2;
int lyingarray = 1;
int laugharray = 2;
int currentFrame = 0;
PImage[] front = new PImage[frontarray];
PImage[] left = new PImage[leftarray];
PImage[] right = new PImage[rightarray];
PImage[] lying = new PImage[lyingarray];
PImage[] laughing = new PImage[laugharray];
//int FRONT = 0;
//int SLEFT = 1;
//int MLEFT = 2;
//int SRIGHT = 3;
//int MRIGHT = 4;
//int LIE = 5;
//int LAUGH1 = 6;
//int LAUGH2 = 7;
int STATE = 1;


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
  image(front[currentFrame],200,100);
  image(left[currentFrame],200,100);
  image(right[currentFrame],200,100);
  image(lying[currentFrame],200,100);
  image(laughing[currentFrame],200,100);
  currentFrame++;
  if(currentFrame >= frontarray){
    currentFrame = 0;
  }
  if(currentFrame >= leftarray){
    currentFrame = 0;
  }
  if(currentFrame >= rightarray){
    currentFrame = 0;
  }
  if(currentFrame >= lyingarray){
    currentFrame = 0;
  }
  if(currentFrame >= laugharray){
    currentFrame = 0;
  }
for (int moves = 0; moves < 10; moves ++){
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
//void keyTyped(){
//  switch(key){
//    case 'q':
//    STATE = FRONT;
//    break;
//    case 'w':
//    STATE = SLEFT;
//    break;
//    case 'e':
//    STATE = MLEFT;
//    break;
//    case 'r':
//    STATE = SRIGHT;
//    break;
//    case 't':
//    STATE = MRIGHT;
//    break;
//    case 'a':
//    STATE = LIE;
//    break;
//    case '1':
//    STATE = LAUGH1;
//    break;
//    case '2':
//    STATE = LAUGH2;
//    break;
//  }
//}



void Front(){
  background(200);
  image(front[0], 150, 100, width/2,height/2);
}

void standLeft(){
  background(300);
  image(left[0], 150, 100, width/2,height/2);
}

void moveLeft(){
  background(350);
  image(left[1], 250, 100, width/2,height/2);
}

void standRight(){
  background(450);
  image(right[0], 150, 100, width/2,height/2);
}

void moveRight(){
  background(450);
  image(right[1], 250, 100, width/2,height/2);
}

void Lying(){
  background(300,20,20);
  image(lying[0], 150, 100, width/2,height/2);
}
void Laughing1(){
  background(300,20,20);
  image(laughing[0], 150, 100, width/2,height/2);
}

void Laughing2(){
  background(360,20,20);
  image(laughing[1], 150, 100, width/2,height/2);
}
