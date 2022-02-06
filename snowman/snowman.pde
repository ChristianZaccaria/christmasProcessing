void setup()
{
  size (400, 400); //dimensions of display
}

void draw() //function where animations are actioned
{
  snowman(); //calling function I created for the snowman
}

void snowman()
{
  stroke(0);
  //Head and whole body of Snowman
  fill(255, 250, 250); //white color snowman

  int yCoord = 200;  //declared variable to change the position Y coordinate of snow body.
  int w = 130;  //variable used to decrease the width of the snowman's body
  int h = 125;  //variable used to decrease the height of the snowman's body
  while (yCoord>=80)  //while y coordinate is less or equal to 80, statement is true
  {
    ellipse(200, yCoord, w, h); //draw snowman's whole body
    yCoord = yCoord - 60; //changes the yCoord from 200 to 140 to 80
    w = w - 20; //changes width from 130 to 110 to 90
    h = h - 20; //changes height from 125 to 105 to 85
  }
  
  //stone buttons on snowman
  fill(50); //fills dark gray colour
  for(int y=135; y<=175; y=y+20) //y coordinate is 135, if less or equal to 175, add 20
  {
  circle(200,y,12); //stone buttons
  }
  
  //Snowman's Hat
  noStroke();
  fill(50);
  rect(155, 44, 90, 15);
  rect(175, 0, 50, 58);
  
  //Snowman's Carrot Nose
  fill(233, 105, 43);
  triangle(195,85,195,97,225,93);
  
  //Snowman's stone Eyes
   fill(50);
   circle(185,77,12);
   circle(215,77,12);
   
   //Snowman's arms
   stroke(50);
   strokeWeight(3);
   //left arm
   line(165,135,110,110);
   line(122,115,120,100);
   //right arm
   line(235,135,290,110);
   line(278,115,280,102);
}
