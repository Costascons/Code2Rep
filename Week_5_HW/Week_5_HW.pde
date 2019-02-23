import sprites.*;
import sprites.maths.*;
import sprites.utils.*;
PImage img;
int IDLE = 0;
int MLEFT = 1;
int MRIGHT = 2;
int LIE = 3;
int STATE = IDLE;

void setup(){
  size(600,600);

}

void draw(){
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
  img = loadImage("Caveman (front).png");
  image(img, 150, 100, width/2,height/2);
}

void moveLie(){
  background(300);
  img = loadImage("Caveman (lying).png");
  image(img, 150, 100, width/2,height/2);
}
