float degrees = 40;
void setup() {
  size(400, 400);
}

void draw() {
  background(0);
  
  degrees += 1;
  float offset = radians(-20);
  float x = cos( radians(degrees)+ offset ) * 80;
  float y = sin( radians(degrees)+ offset ) * 80;
  fill(300,20,20);
  ellipseMode(CENTER);
  ellipse( 200 + x, 200+ y, 30, 30);

  float offset1 = radians(60);
  float x1 = cos( radians(degrees) + offset1 ) * 80;
  float y1 = sin( radians(degrees) + offset1 ) * 80;
  fill(20,200,20);
  ellipse(200 + x1, 200 + y1, 30, 30);
  
  float offset2 = radians(140);
  float x2 = cos( radians(degrees) + offset2 ) * 80;
  float y2 = sin( radians(degrees) + offset2 ) * 80;
  fill(20,20,200);
  ellipse(200 + x2, 200 + y2, 30, 30);
  
  float offset3 = radians(220);
  float x3 = cos( radians(degrees) + offset3 ) * 80;
  float y3 = sin( radians(degrees) + offset3 ) * 80;
  fill(200);
  ellipse(200 + x3, 200 + y3, 30, 30);
  
  float offset4 = radians(300);
  float x4 = cos( radians(degrees) + offset4 ) * 80;
  float y4 = sin( radians(degrees) + offset4 ) * 80;
  fill(250,200,20);
  ellipse(200 + x4, 200 + y4, 30, 30);
}

void keyPressed(){
  
}
