float ballW = width/2;
float ballH = height/2;
float size = 60;
PVector velocity;
PVector acceleration; 
PVector position;
boolean colorChan;
boolean ifCatch = false;


void setup(){
 size(800,800);
 position = new PVector(200,200);
 velocity = new PVector(1,5);
 acceleration = new PVector(0.1,0);

  
}

void draw(){
  background(0);
  if(colorChan==true){
  fill(255,0,0);
  }else if (colorChan ==false){
    fill(0,255,0);
  }
  
  ellipse(position.x, position.y, ballW, ballH);
  
 position.add(velocity);
 velocity.add(acceleration);

  if(position.x > width - ballW/2 || position.x < ballW/2){
      position.x -= velocity.x;
      velocity.x *= -1; 
      //acceleration.x = -1;
      colorChan = true;
    }
    if(position.y > height - ballH/2 || position.y < ballH/2){
      position.y -= velocity.y;
      velocity.y *= -1; 
      //acceleration.x = -1;
      colorChan = false;
    }
  
}


void mousePressed(){
position.x = mouseX;
position.y = mouseY;
}

void mouseDragged(){
position.x = mouseX;
position.y = mouseY;
}

void mouseReleased(){
position.x = mouseX;
position.y = mouseY;
position = new PVector(random(width),random(height)); 
}
