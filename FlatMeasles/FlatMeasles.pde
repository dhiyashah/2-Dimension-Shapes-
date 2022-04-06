//Global Variables 
int reset, smallerDisplayDimension, mouthOpen;
float rectFaceX, rectFaceY, rectFacedisplayWidth, rectFacedisplayHeight; 
float faceX, faceY, faceDiameter;
float leftEyeX, leftEyeY, rightEyeX, rightEyeY, eyeDiameter;
float mouthX1, mouthY1, mouthX2, mouthY2;
float xNose1, yNose1, xNose2, yNose2, xNose3, yNose3;
//
//Display Geometry 
fullScreen(); //size(600,400)
println(displayWidth, displayHeight);
int appWidth = displayWidth, appHeight = displayHeight;
println(appWidth, appHeight);
//Display Orientation: a few comparisons for IFs
//Computer Tells us the orientation, important for Cell Phone Orientation
//if ( width >= height ) {println("Landscape or Square");} else {println("Portrait");}
String orientation = ( displayWidth >= displayHeight ) ? "Landscape or Square": "Portrait"; //Ternary Operator, repeats IF-ELSE
if (orientation=="Portrait") println("Turn your phone");
/*
if ( orientation=="Landscape or Square" ) {
  //Empty IF
} else {
  println("Turn your phone"); //FUN
}
*/
println("Display Orientation:", orientation);
//
//Variable Population
smallerDisplayDimension = displayHeight; //ALWAYS in Landscape
reset = smallerDisplayDimension / smallerDisplayDimension; 
rectFaceX = (displayWidth*1/2) - (smallerDisplayDimension*1/2);
rectFaceY = displayHeight*0;
rectFacedisplayWidth = smallerDisplayDimension;
rectFacedisplayHeight = smallerDisplayDimension;
faceX = displayWidth*1/2;
faceY = displayHeight*1/2;
faceDiameter = smallerDisplayDimension;
leftEyeX = displayWidth*3/8;
rightEyeX = displayWidth*5/8;
leftEyeY = displayHeight*5/16;
rightEyeY = leftEyeY; //Best Practice: change one line of code 
eyeDiameter = smallerDisplayDimension*1/4;
mouthX1 = leftEyeX;
mouthY1 = displayHeight*3/4;
mouthX2 = rightEyeX;
mouthY2 = mouthY1;
mouthOpen = smallerDisplayDimension*1/8;
xNose1 = faceX;
yNose1 = displayHeight*1/2;
xNose2 = faceX - leftEyeY*1/3;
yNose2 = displayHeight*5/8;
xNose3 = faceX + leftEyeY*1/3;
yNose3 = displayHeight*5/8;
//
//Face: Circle = Inscribing a Circle in a Square
//Center a circle on display orientation
rect(rectFaceX, rectFaceY, rectFacedisplayWidth, rectFacedisplayHeight);
ellipse(faceX, faceY, faceDiameter, faceDiameter);
//
//Left Eye
rect(leftEyeX-eyeDiameter*1/2, leftEyeY-eyeDiameter*1/2, eyeDiameter, eyeDiameter);
ellipse(leftEyeX, leftEyeY, eyeDiameter, eyeDiameter);
//
//Right Eye
rect(rightEyeX-eyeDiameter*1/2, rightEyeY-eyeDiameter*1/2, eyeDiameter, eyeDiameter);
ellipse(rightEyeX, rightEyeY, eyeDiameter, eyeDiameter);
//
//Nose
rect(xNose2, yNose1, xNose3-xNose2, yNose3-yNose1);
triangle(xNose1, yNose1, xNose2, yNose2, xNose3, yNose3); 
//
//Mouth
int mouthWidth = int ( mouthX2 - mouthX1 );
int mouthHeight = mouthOpen;
rect(mouthX1-mouthHeight*1/2, mouthY1-mouthHeight*1/2, mouthWidth+mouthOpen, mouthHeight);
strokeWeight(mouthOpen);
line(mouthX1, mouthY1, mouthX2, mouthY2);
strokeWeight(reset); //reset to 1 pixel
//
//Measle
float measleDiameter = random( smallerDisplayDimension*1/100, smallerDisplayDimension*1/25 ); //Range of measle size: small=*1/100, large=4*bigger (*1/25)
float measleRadius = measleDiameter*1/2;
println( measleRadius );
float measleX = random( rectFaceX+measleRadius , ((rectFaceX+rectFacedisplayWidth ) -measleRadius ) ); //*0 = top left corner, no# = right bottom corner, *1/2 = center
float measleY = random( rectFaceY+measleRadius , ((rectFaceY+rectFacedisplayHeight ) -measleRadius ) );
Boolean nightMode=false; //Note:IF-ELSE similar to ternary operator
//color red=#FF0000, measleColour=red, whiteReset=#000000; //Note: need range here too
color measleColour = ( nightMode==false ) ? color ( 255, random(0,70), random(0,100) ) : color ( 255, random(0,70), 0 ); //ternary operator for day:night, color(r, g, b) 
color whiteReset=#000000;
rect(measleX-measleDiameter*1/2, measleY-measleDiameter*1/2, measleDiameter, measleDiameter);
//random values given other variables (similar to button code)
noStroke(); //Shape Outline
fill(measleColour);
ellipse( measleX, measleY, measleDiameter, measleDiameter );
stroke(reset); //reset to 1 pixel
fill(whiteReset); //reset to first colour (ex: blackReset)
