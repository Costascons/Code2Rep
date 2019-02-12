Circle c;
Square s;
int circleLength = 50;
ArrayList<Circle> circles = new ArrayList<Circle>();

void setup(){
  size (600,600);
  for(int i = 0; i < circleLength; i ++){
  circles.add(new Circle(150,150,80));
  }
  c = new Circle (150,150,80);
}

void draw(){
for(Circle c : circles){
  c.display();
  c.hitDetection();
  c.move();
   }
}

void mousePressed(){
for (Circle c: circles){
 c.mousePressed(); 
}
}
