//Global Variables 
//
//Display Geometry 
fullScreen(); //size(600,400)
println(displayWidth, displayHeight);
//Display Orientation
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
//
//Face
//Center a circle on display orientation
rect();
//
//Left Eye
//rect();
//
//Right Eye
//rect();
//Measle
