Caveman c;

void setup(){

size(800,800);
c = new Caveman();
imageMode(CENTER);
}

void draw(){
  background(255);
c.display();
c.update();
  
}
