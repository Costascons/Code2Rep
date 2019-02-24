//import sprites.*;
//import sprites.maths.*;
//import sprites.utils.*;
int framenum = 6;
int currentFrame = 0;
PImage[] animation = new PImage[framenum];
int FRONT = 0;
int SLEFT = 1;
int MLEFT = 2;
int SRIGHT = 3;
int MRIGHT = 4;
int LIE = 5;
int STATE = FRONT;


void setup(){
  size(600,600);
  animation[0] = loadImage("Caveman (Front).png");
  animation[1] = loadImage("Caveman (Left).png");
  animation[2] = loadImage("Caveman (Left Walk).png");
  animation[3] = loadImage("Caveman (Right).png");
  animation[4] = loadImage("Caveman (Right Walk).png");
  animation[5] = loadImage("Caveman (Lying).png");
}

void draw(){
  image(animation[currentFrame],200,100);
  currentFrame++;
  if(currentFrame >= framenum){
    currentFrame = 0;
  }
  switch(STATE){
    case 0: 
    Front();
    break;
    case 1:
    standLeft();
    break;
    case 2:
    moveLeft();
    break;
    case 3:
    standRight();
    break;
    case 4:
    moveRight();
    break;
    case 5:
    Lying();
    break;
  }
  

}
void keyTyped(){
  switch(key){
    case 'q':
    STATE = FRONT;
    break;
    case 'w':
    STATE = SLEFT;
    break;
    case 'e':
    STATE = MLEFT;
    break;
    case 'r':
    STATE = SRIGHT;
    break;
    case 't':
    STATE = MRIGHT;
    break;
    case 'a':
    STATE = LIE;
    break;
  }
}

void Front(){
  background(200);
  animation[0] = loadImage("Caveman (Front).png");
  image(animation[0], 150, 100, width/2,height/2);
}

void standLeft(){
  background(300);
  animation[1] = loadImage("Caveman (Left).png");
  image(animation[1], 150, 100, width/2,height/2);
}

void moveLeft(){
  background(350);
  animation[2] = loadImage("Caveman (Left Walk).png");
  image(animation[1], 150, 100, width/2,height/2);
}

void standRight(){
  background(350);
  animation[3] = loadImage("Caveman (Right).png");
  image(animation[1], 150, 100, width/2,height/2);
}

void moveRight(){
  background(350);
  animation[4] = loadImage("Caveman (Right Walk).png");
  image(animation[1], 150, 100, width/2,height/2);
}

void Lying(){
  background(350);
  animation[5] = loadImage("Caveman (Lying).png");
  image(animation[1], 150, 100, width/2,height/2);
}
