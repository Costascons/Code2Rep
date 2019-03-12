//Initially thought this would have something to do with the code from the Markov examples but couldn't seem to make the two work.
//Went through some old code and found how to generate grid structures or multiple objects using arrays.
float[] values = {0.691985, 0.795794, 0.6617521, 0.8133859, 0.46798468, 0.8840414, 0.1441027, 0.14055121, 0.6550779, 0.6083902, 0.08358055, 0.38085133, 0.94942605, 0.9181809, 0.08933967, 0.7113727, 0.9127236, 0.7946792, 0.73184305, 0.48032027, 0.19331998, 0.96156573, 0.8092235, 0.89406, 0.7124853, 0.25608963, 0.81280166, 0.594475, 0.4475516, 0.6568898, 0.6606834, 0.9705857, 0.9898095, 0.594049, 0.24849492, 0.8422875, 0.6198024, 0.9193797, 0.45735377, 0.3799066, 0.2582633, 0.8029286, 0.8448993, 0.61408013, 0.61523986, 0.8110541, 0.10003924, 0.55735385, 0.9864199, 0.6811253, 0.3810436, 0.04112482, 0.013410926, 0.45997918, 0.18539858, 0.68651795, 0.92846656, 0.042951107, 0.3647117, 0.620978, 0.2042427, 0.015881836, 0.13584733, 0.34742516, 0.5015801, 0.5454508, 0.42790967, 0.6215074, 0.49465632, 0.8180565, 0.011841655, 0.92468226, 0.7103479, 0.8319569, 0.5940603, 0.5945724, 0.37014925, 0.79231834, 0.31712145, 0.4254008, 0.30698246, 0.73814327, 0.9389292, 0.44458085, 0.049805462, 0.5908275, 0.7881539, 0.049094856, 0.8458095, 0.5065281, 0.4885738, 0.017648816, 0.7085428, 0.14193028, 0.37093294, 0.45037812, 0.041483343, 0.3118266, 0.5501475, 0.10385203};
int num = 100;
int[] colors = new int[num];
float barW;
float barH;
int X;
//int Y;
float ballW = width/2;
float ballH = width/2;
PVector pos, vel;

void setup() {
size(800,800); 
pos = new PVector (200,200);
vel = new PVector (1,5);
for( int i = 0; i < values.length; i ++){
 colors[i] = int (random(0,255));
 colors[i] = color (random(0,255), (random(0,255)), (random(0,255)), (random(0,255)));
//Initially thought that making the width equal to the length of the array would work but
//the bars didn't come out right.
//I then opted to multiply the width of the canvas by the length, since I recalled
//you mentioning something about width but this wasn't right either.
//I then settled on dividing which seemed more accurate.
//barW = values.length;
//barW = width*values.length;
 barW = width/values.length;
//Through looking at different examples of old code I remembered the '[i]' variable
//which always confused me but dividing that by the height seemed to work in older code.
 barH = height/values[i];
//Thought the y coordinate would need to also be altered in order to generate the bar graph like structure
//but it only stacked them in one corner so decided to remove it and try without creating a variable for Y.
//Also initially used different values in the y coordinates but realized it alters the height of the bar locations wrong.
//Experimented until I saw 0 works
 rect(X,0,barW,barH);
//I thought initially that the x coordinate should stay the same as the y coordinate
//but after seeing it didn't work and remembering that we needed to work on
//the width in the sketch, I decided to play around with the x coordinate
//and the size of the rectangle which was divided by the length of the array
//which eventually led to the below code.
 X *= barW;
 //Y += barH;
 }

}


void draw() {
//Couldn't figure out how to add in a background without the rectangles
//disappearing.

fill(0,200,20);
//I couldn't figure out how to get the ellipse to work with the rectangle grid system
ellipse(pos.x, pos.y, ballW, ballH);
pos.add(vel);


for( int i = 0; i < values.length; i ++){
 colors[i] = int (random(0,255));
 colors[i] = color (random(0,255), (random(0,255)), (random(0,255)), (random(0,255)));
 barW = width/values.length;
//As with the example further below, I decided to play around with the values in draw
//separately from the setup function and saw strangely that it made the sketch work
//although I'll admit I don't know why
 barH = height*values[i];
 fill(colors[i]);
 rect(X,0,barW,barH);
//For some odd reason I realized that after playing around with the code below to have
// it '+' here and '*' in setup actually made the color function work
//which confused me but at least it works now
 X += barW;
 //Y += barH;
  
 }


  if(pos.x > width - ballW/2 || pos.x < ballW/2){
      pos.x -= vel.x;
      vel.x *= -1; 

    }
    if(pos.y > height - ballH/2 || pos.y < ballH/2){
      pos.y -= vel.y;
      vel.y *= -1; 

    }
}
