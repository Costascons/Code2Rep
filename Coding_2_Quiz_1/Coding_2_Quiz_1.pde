//Trigonometric Oscillation Variables
float angle = 0.0;
float incr = 0.12;
float easing = .35;
float scalar;

//Linear Oscillation Variables
int x =500;
int xspeed =6;

void setup() {
  size(600, 600);
  scalar = width/2 - 50;
}


void draw() {
  background(0); 
  //Trigonometric Oscillation
  //float x1 = width/2 + sin(angle) * scalar;
  fill(255);
  stroke(0);
  //ellipse(x1, height/2 -100, 100, 100);
  //angle += incr * easing;
  
  //Linear Oscillation
  x += xspeed;
  fill(255);
  stroke(0);
  ellipse(x, width/2, 100, 100);
  if (x > width-50 || x < 0+50) {
    xspeed *= -1;
  } 
}
