//Global Variables 
int smallerDisplayDimension;
float rectFaceX, rectFaceY, rectFacedisplayWidth, rectFacedisplayHeight; 
float faceX, faceY, faceDiameter;
float leftEyeX, leftEyeY, rightEyeX, rightEye, eyeDiameter;
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
leftEyeX = ;
rightEyeX = ;
leftEyeY = ;
rightEyeY = ;
eyeDiameter = ;
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
//Measle
//rect();
