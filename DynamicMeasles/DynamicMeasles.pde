//Global Variables
int reset, smallerDisplayDimension, mouthOpen;
float rectFaceX, rectFaceY, rectFacedisplayWidth, rectFacedisplayHeight; 
float faceX, faceY, faceDiameter;
float leftEyeX, leftEyeY, rightEyeX, rightEyeY, eyeDiameter;
float mouthX1, mouthY1, mouthX2, mouthY2;
float xNose1, yNose1, xNose2, yNose2, xNose3, yNose3;
void setup() 
{
 fullScreen(); //size(600,400)
 displaySetup();
 //Variable Population
 population();
 //
 //Face: Circle = Inscribing a Circle in a Square
 //Center a circle on display orientation
 //rect(rectFaceX, rectFaceY, rectFacedisplayWidth, rectFacedisplayHeight);
 ellipse(faceX, faceY, faceDiameter, faceDiameter);
 //
 }//End setup
void draw() 
{
 //Measle
 float measleDiameter = random( smallerDisplayDimension*1/100, smallerDisplayDimension*1/25 ); //Range of measle size: small=*1/100, large=4*bigger (*1/25)
 float measleRadius = measleDiameter*1/2;
 println( measleRadius );
 float measleX = random( rectFaceX+measleRadius , ((rectFaceX+rectFacedisplayWidth ) -measleRadius ) ); //*0 = top left corner, no# = right bottom corner, *1/2 = center
 float measleY = random( rectFaceY+measleRadius , ((rectFaceY+rectFacedisplayHeight ) -measleRadius ) );
 Boolean nightMode=false; //Note:IF-ELSE similar to ternary operator
 //color red=#FF0000, measleColour=red, whiteReset=#000000; //Note: need range here too
 color measleColour = ( nightMode==false ) ? color ( 255, random(0,70), random(0,100) ) : color ( 255, random(0,70), 0 ); //ternary operator for day:night, color(r, g, b) 
 color whiteReset=#FFFFFF;
 //rect(measleX-measleDiameter*1/2, measleY-measleDiameter*1/2, measleDiameter, measleDiameter);
 //random values given other variables (similar to button code)
 noStroke(); //Shape Outline
 fill(measleColour);
 ellipse( measleX, measleY, measleDiameter, measleDiameter );
 stroke(reset); //reset to 1 pixel
 fill(whiteReset); //reset to first colour (ex: blackReset)
 //
 //Left Eye
 //rect(leftEyeX-eyeDiameter*1/2, leftEyeY-eyeDiameter*1/2, eyeDiameter, eyeDiameter);
 ellipse(leftEyeX, leftEyeY, eyeDiameter, eyeDiameter);
 //
 //Right Eye
 //rect(rightEyeX-eyeDiameter*1/2, rightEyeY-eyeDiameter*1/2, eyeDiameter, eyeDiameter);
 ellipse(rightEyeX, rightEyeY, eyeDiameter, eyeDiameter);
 //
 //Nose
 //rect(xNose2, yNose1, xNose3-xNose2, yNose3-yNose1);
 triangle(xNose1, yNose1, xNose2, yNose2, xNose3, yNose3); 
 //
 //Mouth
 int mouthWidth = int ( mouthX2 - mouthX1 );
 int mouthHeight = mouthOpen;
 //rect(mouthX1-mouthHeight*1/2, mouthY1-mouthHeight*1/2, mouthWidth+mouthOpen, mouthHeight);
 strokeWeight(mouthOpen);
 line(mouthX1, mouthY1, mouthX2, mouthY2);
 strokeWeight(reset); //reset to 1 pixel
 //
}//End draw
//
void keyPressed() 
{
  
}//End keyPressed
//
void mousePressed() 
{
  
}//End mousePressed
//
//End Main Program






/*

 
 //Measle
 float measleDiameter = random( smallerDisplayDimension*1/100, smallerDisplayDimension*1/25 ); //Range of measle size: small=*1/100, large=4*bigger (*1/25)
 float measleRadius = measleDiameter*1/2;
 println( measleRadius );
 float measleX = random( rectFaceX+measleRadius , ((rectFaceX+rectFacedisplayWidth ) -measleRadius ) ); //*0 = top left corner, no# = right bottom corner, *1/2 = center
 float measleY = random( rectFaceY+measleRadius , ((rectFaceY+rectFacedisplayHeight ) -measleRadius ) );
 rect(measleX-measleDiameter*1/2, measleY-measleDiameter*1/2, measleDiameter, measleDiameter);
 Boolean nightMode=false; //Note:IF-ELSE similar to ternary operator
 //color red=#FF0000, measleColour=red, whiteReset=#000000; //Note: need range here too
 color measleColour = ( nightMode==false ) ? color ( 255, random(0,70), random(0,100) ) : color ( 255, random(0,70), 0 ); //ternary operator for day:night, color(r, g, b) 
 color whiteReset=#000000;
 
 //
 //
 //
 //
 //rect();
 //random values given other variables (similar to button code)
 noStroke(); //Shape Outline
 fill(measleColour);
 ellipse( measleX, measleY, measleDiameter, measleDiameter );
 stroke(reset); //reset to 1 pixel
 fill(whiteReset); //reset to first colour (ex: blackReset)
 */
