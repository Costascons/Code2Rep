// HSB Color Wheel



int numObjects = 5;
 int angle = 135;
float dist = 100;

void setup() {
  size(500, 500);
  noStroke();
}

void draw() {
  // red, green and blue
  colorMode(RGB, 1000, 1000, 2);
  //hue, saturation, brightness
  colorMode(HSB, 360, 100, 100);
   
  //float x = 0;
  float x = cos( radians(angle)) * dist;
  //float y = 0;
  float y = sin( radians(angle)) * dist;
  
  

  fill(angle, 100, 100);
  ellipse( x + 250, y + 250, 30, 30);
  ellipse( x + 125, y + 125, 30, 30);
  ellipse( x + 350, y + 125, 30, 30);
 
  //angle = int(degrees(atan2(mouseY - 250, mouseX - 250)));
  

  //385/360 = 1 r 25

  println(angle, angle/360, angle % 360);
    fill(0, 0, 100);
  ellipse(250, 250, 3, 3);
   angle += 1;
  angle %= 360;
}

void keyPressed(){
  if(key == '='){
    angle ++;
  }
  if(key == '-'){
    angle --;
  }
}

// Add in key presses to move the bigger circle
