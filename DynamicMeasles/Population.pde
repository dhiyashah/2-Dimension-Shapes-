void population () 
{
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
}
//End void population 
