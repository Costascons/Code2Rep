class Clouds {
  PVector velocity, location;
 int size=10;
  
  Clouds(){
  location = new PVector((width/2-100), (height/2-200));
  velocity = new PVector(random(-1,5), random(-1,5));
 
}

 void display(){
   noStroke();
  fill(200,0,0,63);
  ellipse(location.x,location.y, 10, 10);
  ellipse(location.x,location.y, 30, 30);
  ellipse(location.x,location.y, 50, 50);
 }
 
 void move(){
   location.add(velocity);
 }
 
 
  }
