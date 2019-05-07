/*

1 class to act as Base class for Shapes:
Pvector pos;
float w, h;
color fillColor = color(255);

Shape( float _x, float _y, float _w, float _h) {
    pos = new PVector(_x, _y);
    w = _w;
    h = _h;
}

void display() {}
  void setColor( float _grey) {
    setColor( color(_grey, _grey, _grey) );
  }
  
boolean hitDetection( float X, float Y) {
return ( !( (X < pos.x) || (X > pos.x + w) || (Y < pos.y) || (Y > pos.y + h) ) );
  }


1 class for hit detection/ square boundaries:
class extends Shape
Square(floats x, y, w, h){
 this.x = x
 this.y = y etc..

}

display function {
 fill(fillColor_
 rect(pos.x, pos.y, w, h)
}

boolean hitDetection( float X, float Y){
return( !( (X < pos.x) || (X > pos.x + w) || (Y < pos.y) || (Y > pos.y + h) ) );  
}

Section in main tab to draw grid system and arrays and to call hitDetections:



mousePressed function {
  Here I will be adding the boolean to remove the squares once they are clicked
 boolean Remove = false;
 
}

}


Section for generating array grid system of squares:
int W = 10;
int H = 10;
int numObjects;

int[][]mines;
boolean[][]

float rows, cols;
float[][] gridrows = new float[W][H];
float[][] gridcols = new float[W][H];

setup{
  
rows = width/W;
cols = height/H;

for(int r = 0; r < W; r++)
  {
    for(int c = 0; c < H; c++)
    {
      gridrows[r][c] = r * rows;
      gridcols[r][c] = c * cols;
    }
  }
}

draw{
 for(int r = 0; r < W; r++)
  {
    for(int c = 0; c < H; c++)
    {
     rect(gridrows[r][c], gridcols[r][c], W, H);
    }
  } 
  
  
}
  
  
}








*/
