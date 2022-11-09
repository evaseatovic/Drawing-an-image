//To Do, add the printlns to verify the values
//Algorithm works when image is bigger than the CANVAS, not smaller
//Different Algorithm is necessary - work to get above 65%
//
//Global Variables
int appWidth, appHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
float smallerDimension, largerDimension, imageWidthRatio=0.0, imageHeightRatio=0.0;
Boolean widthLarger=false, heightLarger=false;
PImage pic;
Boolean nightMode=false;
//
void setup() {
  size(800, 600); //Landscape
  //Copy Display Algorithm from Hello World
  appWidth = width;
  appHeight = height;
//
//Image Dimentions for Aspect Ratio
//20Ounce_NYAS-Apples2.png
int picWidth = 800;
int picHeight = 600;
//Image Orientation: Landscape, Square, Portrait
if ( picWidth >= picHeight ) { //True if Landscape or Square
  largerDimension = picWidth;
  smallerDimension = picHeight;
  widthLarger = true;
} else { //False if Portrait
  largerDimension = picHeight;
  smallerDimension = picWidth;
  heightLarger = true;
}
 //
 //Teaching Example
 //Better Image Stretch Algorithum
  float picWidthAdjusted=0.0, picHeightAdjusted=0.0;
//We know the width is the larger dimention
if ( appWidth >= picWidth ) {
  picWidthAdjusted = appWidth;
  //
  if ( widthLarger == true ) imageWidthRatio = largerDimension / largerDimension;
  if ( heightLarger == true ) imageWidthRatio = smallerDimension / largerDimension;
  //
  if ( appHeight >= picHeight ) {
    //calculated Dimension b/c smaller than width
    if ( heightLarger == true ) imageHeightRatio = smallerDimension / largerDimension;
    if ( heightLarger == true ) imageHeightRatio = largerDimension / largerDimension;
  } else {
    //Image smaller than CANVAS needs separate alorithum
  }
} else {
  //Image smaller than CANVAS, needs separate algorithum
  println("CANVAS is smaller then image");
}
}//End setup
//
void draw() {}//End draw
// 
void keyPressed() {}//End keyPressed
//
void mousePressed() {}//End mousePressed
//

//Aspect Ratio of Background Image

//
//Aspect Ratio Calculations
if ( widthLarger == true ) imageWidthRatio = largerDimension / largerDimension;
if ( widthLarger == true ) imageHeightRatio = smallerDimension / largerDimension;
if ( heightLarger == true ) imageWidthRatio = smallerDimension / largerDimension;
if ( heightLarger == true ) imageHeightRatio = largerDimension / largerDimension;

  //
 
//Population
pic = loadImage("../images used/20Ounce_NYAS-Apples2.png");
backgroundImageX = appWidth*0;
backgroundImageY = appHeight*0;
backgroundImageWidth = appWidth-1;
backgroundImageHeight = appHeight-1;
//
// Adjust Iamge Varaibles for Asepct Ratio

picWidthAdjusted = backgroundImageWidth * imageWidthRatio;
picHeightAdjusted = backgroundImageHeight * imageHeightRatio;
//Rectangular Layout and Image Drawing to CANVAS
//rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
//
if ( nightMode == false ) tint(255, 64); //Gray Scale, Day use: use 1/2 tint value for white (i.e. 128/256=1/2)
if ( nightMode == true ) tint(64, 64, 40); //RGB: Night Mode
image( pic, backgroundImageX, backgroundImageY, picWidthAdjusted, picHeightAdjusted);
