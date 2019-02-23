//import sprites.*;
//import sprites.maths.*;
//import sprites.utils.*;
int framenum = 3;
int currentFrame = 0;
PImage[] animation = new PImage[framenum];
int IDLE = 0;
int MLEFT = 1;
int MRIGHT = 2;
int LIE = 3;
int STATE = IDLE;


void setup(){
  size(600,600);
  animation[0] = loadImage("Caveman (front).png");
  animation[1] = loadImage("Caveman (lying).png");
}

void draw(){
  image(animation[currentFrame],200,100);
  currentFrame++;
  if(currentFrame >= framenum){
    currentFrame = 0;
  }
  switch(STATE){
    case 0: 
    moveRight();
    break;
    case 3:
    moveLie();
    break;
  }
  

}
void keyTyped(){
  switch(key){
    case 'w':
    STATE = IDLE;
    break;
    case 's':
    STATE = LIE;
    break;
  }
}

void moveRight(){
  background(200);
  animation[0] = loadImage("Caveman (front).png");
  image(animation[0], 150, 100, width/2,height/2);
}

void moveLie(){
  background(300);
  animation[1] = loadImage("Caveman (lying).png");
  image(animation[1], 150, 100, width/2,height/2);
}
