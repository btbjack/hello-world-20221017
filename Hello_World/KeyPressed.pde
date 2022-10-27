//Global Variables
Boolean nightMode=false;
//
void setup() {}//End setup
//
void draw() {
 if (nightMode==true) println("I am nocturnal");
 if (nightMode==false)println("");
}//End draw
//
void keyPressed() {
  nightMode=true;
}
//End keypressed
