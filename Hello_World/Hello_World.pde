//Global Variables
int appWidth, appHeight;
float centerX, centerY, xStart, yStart, widthRect, heightRect;
color blackNightMode=#000000, red=#F8FC64, golden=#FA00F6, white=#FFFFFF; //Hexidecimal
color redNightMode=#F8FC00, goldenNightMode=#FA0096; //Hexidecimal
float thin, normal, thick;
Boolean greyscale=false, BackgroundColour=false;
//
void setup() {
  //Declaring Display Geometry: landscape, square, portrait
  size(700, 400); //Able to deploy with fullScreen();
  //fullScreen();
  appWidth = width;
  appHeight = height;
  //Concatenation: , or + (i.e space)
  println("\t\t\tWidth="+width, "\tHeight="+height);
  println("Display Monitor:", "\twidth:"+displayWidth, "\theight:"+displayHeight);
  //
  String ls="Landscape or Square", p="portrait", DO="Display Orientation", instruct="Bru, turn your phun";
  //
  if ( appWidth < appHeight ) {//Declaring landscape & spuare
    println(instruct);
  } else {
    println("Display: Good to Go");
    if ( appWidth > displayWidth ) { //Fitting CANVAS into Monitor Display 
      appWidth=0; 
      appHeight=0;
      println("STOP, is broken");
    }
  }
  //Population
  centerX = width * 1/2;
  centerY = height * 1/2;
  xStart = centerX - ( width * 1/4 );
  yStart  = centerY - ( height * 1/4 );
  widthRect = width * 1/2;
  heightRect = height * 1/2;
  thin = appWidth / appWidth; //1
  normal = appWidth * 1/70;
  thick = appWidth * 1/35;
}//End setup
//
void draw() {
  // New Background Function "covers" old gray scale background()
  // Night Mode means background cannot have blue // change randome for night mode, hard code "0"
  if ( grayScale == true ) background(100); //Gray Scale (0-255) & Blue Issue for night mode
  //
  //Casting Reminder
  if ( backgroundColour=true )background( color( random(0, 255), random(0, 255), random(0, 255) ) ); // Colour without blue
  // 
  strokeWeight( thick );
  if ( nightMode == true)
  {
    background( blackNightMode );
    stroke( redNightMode );
    fill( goldenNightMode );
  } else
  { 
    stroke( red );
    fill( golden );
  }
  rect(xStart, yStart, widthRect, heightRect);
  fill( white ); //default reset
  stroke( blackNightMode ); //default reset
  strokeWeight(1); //default reset
} //End draw
//
void keyPressed() {
  grayScale = false;
  if ( key == 'G' || key =='g' );
  if ( key == 'B' || key =='b' );
} //End keyPressed
//
void mousePressed() {
  if ( mouseButton == LEFT ) nightMode = true;
  if ( mouseButton == RIGHT ) nightMode = false;
} //End mousePressed
//
// End Main Program
