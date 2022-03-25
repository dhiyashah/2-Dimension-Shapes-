//Global Variables 
int smallerDisplayDimension;
float rectFaceX, rectFaceY, rectFacedisplayWidth, rectFacedisplayHeight; 
float faceX, faceY, faceDiameter;
float leftEyeX, leftEyeY, rightEyeX, rightEyeY, eyeDiameter;
float mouthX1, mouthY1, mouthX2, mouthY2;
//
//Display Geometry 
fullScreen(); //size(600,400)
println(displayWidth, displayHeight);
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
//
//Face: Circle = Inscribing a Circle in a Square
//Center a circle on display orientation
rect(rectFaceX, rectFaceY, rectFacedisplayWidth, rectFacedisplayHeight);
ellipse(faceX, faceY, faceDiameter, faceDiameter);
//
//Left Eye
//rect();
ellipse(leftEyeX, leftEyeY, eyeDiameter, eyeDiameter);
//
//Right Eye
//rect();
ellipse(rightEyeX, rightEyeY, eyeDiameter, eyeDiameter);
//
//Nose
//rect();
//
//Mouth
//rect();
line(mouthX1, mouthY1, mouthX2, mouthY2);
//Measle
//rect();
