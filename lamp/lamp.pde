void setup()
{
  size(800, 500);
}

void draw()
{
  lamp();
}

void lamp()
{
  stroke(0);
  strokeWeight(3);
  fill(20); //color of lamp
  rect(700, 260, 30, 180);
  rect(707, 100, 15, 180);
  circle(715, 270, 40);
  line(707, 100, 690, 80);
  line(723, 100, 735, 80);
  fill(#F0F66D); //color of light yellowish
  rect(690, 50, 46, 30); //lights of the lamp

  //this creates four bars that cover the lighting of the lamp
  stroke(0);
  strokeWeight(4);
  int i = 690;
  while (i <= 735)
  {

    line(i, 50, i, 77);
    i = i+15;
  }

  //top part of the lamp that covers the lighting
  stroke(0);
  fill(20);
  triangle(690, 50, 713, 20, 735, 50);
  noStroke();
  triangle(691, 80, 716, 110, 733, 80);
  stroke(0);
  circle(713,18,10);
  
  //red button on lamp
  fill(255,20,20);
  circle(715,270,25);
}
