//Global Variables 
int appWidth, appHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
PImage pic;
Boolean nightMode=false;
//
size(800, 600); //Landscape
//Copy Display Algorithm from Hello World
appWidth = width;
appHeight = height;
//
//Aspect Ratio og Background Image
//20Ounce_NYAS-Apples2.png
int picWidth = 2400;
int picHeight = 1889;
//Image Orientation: Landscape, Square, Portrait
if ( picWidth >= picHeight ) { //True if Landscape or Square
largerDimention = picWidth;
smallerDimention = picHeight;
widthLarger = true;
} else { //False if Portrait
  largerDimention = picHeight;
  smallerDimention = picWidth;
  heightLarger = true;
}
//
//Aspect Ratio CalCulations
if ( widthLarger == true) imageWidthRatio = largerDimention / largerDimention;
if ( widthLarger == true) imageHeightRatio = smallerDimention / largerDimention;
if ( heightLarger == true) imageWidthRatio = smallerDimention / largerDimention;
if ( heightLarger == true) imageHeightRatio = largerDimention / largerDimention;
//Population
pic = loadImage("../images used/20Ounce_NYAS-Apples2.png");

backgroundImageX = appWidth*0;
backgroundImageY = appHeight*0;
backgroundImageWidth = appWidth-1; 
backgroundImageHeight = appHeight-1;
//
// Adjust Image Varaiables for Aspect Ratio
float picWidthAdjusted, picHeightAdjusted;
backgroundImageWidth = ;
backgroundImageHeight = ;
//Rectangular Layout and Image Drawing to CANVAS
rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
//
if ( nightMode == false) tint(255, 64); //Gray Scale, Day use: use 1/2 tint value for white (i.e. 128/256=1/2)
if ( nightMode == true) tint(64, 64, 40); //RGB: Night Mode
image( pic, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
