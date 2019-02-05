class Drops {
  PVector velocity, location;
 int size=10;
  
  Drops(){
  location = new PVector(random(width), random(100));
  velocity = new PVector(random(-1,5), random(-1,5));
 
}

 void display(){
   fill(255);
   ellipse(location.x,location.y, size, size);
 }
 
 void move(){
   location.add(velocity);
 }
 
 void checkBoundaries() {
    if(location.x > width - size/2){
      location.x = width - size/2;
      velocity.x *= -1; 
    }
    if(location.x < 0 + size/2) {
      location.x = 0 + size/2;
      velocity.x *= -1; 
    }
    if(location.y > height - size/2){
      location.y = height - size/2;
      velocity.y *= -1;   
    }
    if(location.y < 0 + size/2){
      location.y = 0 + size/2;
      velocity.y *= -1; 
    } 
  }
}
