//Global Variables 
//
//Display Geometry 
fullScreen(); //size(600,400)
println(displayWidth, displayHeight);
//Display Orientation: a few comparisons for IFs
//Computer Tells us the orientation, important for Cell Phone Orientation
//if ( width >= height ) {println("Landscape or Square");} else {println("Portrait");}
String orientation = ( width >= height ) ? "Landscape or Square": "Portrait"; //Ternary Operator, repeats IF-ELSE
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
rectFaceX = displayWidth*0;
rectFaceY = displayHeight*0;
rectFacedisplayWidth = displayWidth;
rectFacedisplayHeight = displayHeight;
faceX = displayWidth*1/2;
faceY = displayHeight*1/2;
faceDiameter = ;
//
//Face: Circle = Inscribing a Circle in a Square
//Center a circle on display orientation
rect(rectFaceX, rectFaceY, rectFacedisplayWidth, rectFacedisplayHeight);
ellipse(faceX, faceY, faceDiameter, faceDiameter);
//
//Left Eye
//rect();
//
//Right Eye
//rect();
//
//Nose
//rect();
//
//Mouth
//rect();
//Measle
//rect();
