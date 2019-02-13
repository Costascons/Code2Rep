Circle c;
Square s;
int circleLength = 50;
int squareLength = 50;
ArrayList<Circle> circles = new ArrayList<Circle>();
ArrayList<Square> squares = new ArrayList<Square>();

void setup(){
  size (600,600);
  for(int i = 0; i < circleLength; i ++){
  circles.add(new Circle(150,150,80));
  }
  c = new Circle (150,150,80);
  for(int i = 0; i < squareLength; i ++){
  squares.add(new Square(400,100,100));
  }
  s = new Square (400,100,100);
  
}

void draw(){
for(Circle c : circles){
  c.display();
  c.hitDetection();
  c.move();
   }
   
   for(Square s : squares){
  s.display();
  s.hitDetection();
  s.move();
   }
}

void mousePressed(){
for (Circle c: circles){
 c.mousePressed(); 
}
for (Square s: squares){
 s.mousePressed(); 
}
}
