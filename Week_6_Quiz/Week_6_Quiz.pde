float degrees = 48;
void setup() {
  size(400, 400);
}

void draw() {
  background(0);
  
  degrees += 1;
  float x = cos( radians(degrees) ) * 134;
  float y = sin( radians(degrees) ) * 134;

  ellipseMode(CENTER);
  ellipse( 200 + x, 200+ y, 30, 30);

  float offset1 = radians(60);
  float x1 = cos( radians(degrees) + offset1 ) * 134;
  float y1 = sin( radians(degrees) + offset1 ) * 134;
  ellipse(200 + x1, 200 + y1, 30, 30);
  
  float offset2 = radians(80);
  float x2 = cos( radians(degrees) + offset2 ) * 134;
  float y2 = sin( radians(degrees) + offset2 ) * 134;
  ellipse(200 + x2, 200 + y2, 30, 30);
  
  float offset3 = radians(100);
  float x3 = cos( radians(degrees) + offset3 ) * 134;
  float y3 = sin( radians(degrees) + offset3 ) * 134;
  ellipse(200 + x3, 200 + y3, 30, 30);
  
    float offset4 = radians(120);
  float x4 = cos( radians(degrees) + offset4 ) * 134;
  float y4 = sin( radians(degrees) + offset4 ) * 134;
  ellipse(200 + x4, 200 + y4, 30, 30);
}
