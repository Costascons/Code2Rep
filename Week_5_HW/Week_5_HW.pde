
int frontarray = 1;
int leftarray = 2;
int rightarray = 2;
int lyingarray = 1;
int currentFrame = 0;
PImage[] front = new PImage[frontarray];
PImage[] left = new PImage[leftarray];
PImage[] right = new PImage[rightarray];
PImage[] lying = new PImage[lyingarray];
int FRONT = 0;
int SLEFT = 1;
int MLEFT = 2;
int SRIGHT = 3;
int MRIGHT = 4;
int LIE = 5;
int STATE = FRONT;


void setup(){
  size(600,600);
  front[0] = loadImage("Caveman (Front).png");
  left[0] = loadImage("Caveman (Left).png");
  left[1] = loadImage("Caveman (Left Walk).png");
  right[0] = loadImage("Caveman (Right).png");
  right[1] = loadImage("Caveman (Right Walk).png");
  lying[0] = loadImage("Caveman (Lying).png");
}

void draw(){
  image(front[currentFrame],200,100);
  image(left[currentFrame],200,100);
  image(right[currentFrame],200,100);
  image(lying[currentFrame],200,100);
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
  //front[0] = loadImage("Caveman (Front).png");
  image(front[0], 150, 100, width/2,height/2);
}

void standLeft(){
  background(300);
  //left[0] = loadImage("Caveman (Left).png");
  image(left[0], 150, 100, width/2,height/2);
}

void moveLeft(){
  background(350);
  //left[1] = loadImage("Caveman (Left Walk).png");
  image(left[1], 150, 100, width/2,height/2);
}

void standRight(){
  background(450);
  //right[0] = loadImage("Caveman (Right).png");
  image(right[0], 150, 100, width/2,height/2);
}

void moveRight(){
  background(450);
  //right[1] = loadImage("Caveman (Right Walk).png");
  image(right[1], 150, 100, width/2,height/2);
}

void Lying(){
  background(300,20,20);
  //lying[0] = loadImage("Caveman (Lying).png");
  image(lying[0], 150, 100, width/2,height/2);
}
