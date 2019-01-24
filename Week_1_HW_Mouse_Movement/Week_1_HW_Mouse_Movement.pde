//Easing code taken from Processing reference for easing: https://processing.org/examples/easing.html
//Using the if statement for mousePressed further down so that
//the object only moves when the mouse is clicked/pressed.
//Image code taken from Processing reference for image: https://processing.org/reference/image_.html
//Managed to add in pixel art that I made outside of Processing.
//However, I was unable to find out how to rotate the fish so that its head follows
//the mouse.
float x;
float y;
float easing = 0.05;

PImage img;

void setup() {
  size(600, 600);
  rectMode(CENTER);
  noStroke();
  img = loadImage("Fish.png");
}

void draw() {
  background(50);
  
  if(mousePressed){
  float targetX = mouseX;
  float dx = targetX - x;
  x += dx * easing;
  
  float targetY = mouseY;
  float dy = targetY - y;
  y += dy * easing;
   }
   delay(70);
   image(img, x, y, 100, 100);
  //Managed to have the ellipse rotate to follow the mouse, unlike with my 'fish'.
  //ellipse(x,y,100,100);
  float angle = map(mouseX, mouseY , width, radians(0), radians(360));
  rotate(angle);
  
}
