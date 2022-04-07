void displaySetup() 
{
 //Display Geometry 
 println(displayWidth, displayHeight);
 int appWidth = displayWidth, appHeight = displayHeight;
 println(appWidth, appHeight);
 //
 //Display Orientation: a few comparisons for IFs
 //Computer Tells us the orientation, important for Cell Phone Orientation
 //if ( width >= height ) {println("Landscape or Square");} else {println("Portrait");}
 String orientation = ( displayWidth >= displayHeight ) ? "Landscape or Square": "Portrait"; //Ternary Operator, repeats IF-ELSE
 if (orientation=="Portrait") println("Turn your phone");
 /* if ( orientation=="Landscape or Square" ) {
 //Empty IF
 } else {
 println("Turn your phone"); //FUN
 println("Display Orientation:", orientation);
 */
}//End displaySetuo
