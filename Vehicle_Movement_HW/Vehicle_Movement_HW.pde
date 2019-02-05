PVector pos, velocity, target;
float easing = .01;
boolean isMoving = false;


void setup() {
  size(600, 600);
  noStroke();
  pos = new PVector( 100, 100 );
  velocity = new PVector();
  target = new PVector();
}
void draw() {
  background(255);
  fill(255,0,0);
  pushMatrix();
  translate(pos.x, pos.y);
  rotate( velocity.heading() );
  rect(0, 0, -30, 40);
  fill(255,300,0);
  ellipse(-6,3,5,5);
  ellipse(-25,3,5,5);
  fill(0);
  ellipse(2.5,12,5,8);
  ellipse(-32,12,5,8);
  ellipse(2.5,30,5,8);
  ellipse(-32,30,5,8);
  
  popMatrix();

  if (isMoving == true) {
    velocity.x = target.x - pos.x;
    velocity.y = target.y - pos.y;

    float distance = PVector.dist(target, pos);
    distance *= easing;
    
    velocity.normalize();
    velocity.mult(distance);
    pos.add(velocity);
    
    fill(0);
    ellipse(target.x, target.y, 10, 10);
    
    if (dist(pos.x, pos.y, target.x, target.y) < 10) {
      isMoving = false;
    }
  }
}

void keyPressed() {
  target.x = mouseX;
  target.y = mouseY;
  isMoving = true;
}
