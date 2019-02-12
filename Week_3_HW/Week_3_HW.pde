Buttons b;
ArrayList<Buttons> buttons = new ArrayList<Buttons>();
int numObjects = 100;



void setup() {
  size(600, 600);
  background(100,20,5,18);
  for(int i = 0; i < numObjects; i ++){
    buttons.add(new Buttons(150, 150, 80, 400, 100, 100));
  }
  b = new Buttons (150, 150, 80, 400, 100, 100);

}

void draw(){
  for (Buttons b : buttons){
  b.display();
  b.hitDetection();
  b.move();
  }
}
void mouseClicked(){
  for (Buttons b: buttons){
    b.mousePressed();
  }
}
