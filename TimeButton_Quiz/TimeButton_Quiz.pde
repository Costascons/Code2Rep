int squareNum = 6;
TimeButton[] buttons = new TimeButton[squareNum];


void setup(){
size(600,300);
for(int i = 0; i < squareNum; i ++){
  buttons[i] = new TimeButton();
}
}

void draw(){
  background(0);
for (int i = 0; i < squareNum; i ++){
 buttons[i].display();
 buttons[i].drawSquare();
 buttons[i].switchBackEndTime();
  }
}

void mouseClicked(){
for(int i = 0; i < squareNum; i ++){
  buttons[i]. mouseClicked();
}
}
