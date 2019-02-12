Circle c;
Square s;

void setup(){
  size (600,600);
  c = new Circle (150,150,80);
  s = new Square (400,100,100);
}

void draw(){
  c.display();
  s.display();
}
