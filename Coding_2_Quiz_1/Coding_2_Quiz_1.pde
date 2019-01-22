
float angle = 0.0;
float incr = 0.12;
float easing = .35;
float scalar;

void setup() {
  size(600, 600);
  scalar = width/2 - 50;
}


void draw() {
  background(0); 
  float x1 = width/2 + sin(angle) * scalar;
  fill(255);
  stroke(0);
  ellipse(x1, height/2 -100, 100 , 100);

    angle += incr * easing; 
}
