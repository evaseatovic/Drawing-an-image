//Global Variables 
int appWidth, appHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
PImage pic;
//
size(800, 600); //Landscape
//Copy Display Algorithm
appWidth = width;
appHeight = height;
//
//Population
pic = loadImage("../images used/20Ounce_NYAS-Apples2.png");
tint(0, 153, 204, 126);  // Tint blue and set transparency
backgroundImageX = appWidth*0;
backgroundImageY = appHeight*0;
backgroundImageWidth = appWidth-1; 
backgroundImageHeight = appHeight-1;
//
//Rectangular Layout and Image Drawing to CANVAS
rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
// 
image( pic, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
