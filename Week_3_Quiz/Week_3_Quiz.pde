ArrayList<Drops> drops = new ArrayList<Drops>();
int numDrops = 55;

ArrayList<Clouds> clouds = new ArrayList<Clouds>();
int numClouds = 25;

void setup(){
  size(600,600);
  for (int i=0; i < numDrops; i++){
    drops.add(new Drops());
  }
  
  for (int j=0; j < numDrops; j++){
    clouds.add(new Clouds());
  }
  
}

void draw(){
  background(300,20,55);
  for(Drops d : drops){
   d.move();
   d.checkBoundaries();
   d.display();
  }
  
  for(Clouds c : clouds){
   c.move();
   c.display();
  }
}
