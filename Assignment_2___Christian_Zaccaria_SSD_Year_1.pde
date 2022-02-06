/*
Name : Christian Zaccaria
 Student Number: W20092351
 Programme Name: Software Systems Development Year 1
 
 Brief description of the animation achieved: Mario Bros. Theme song playing.
 Background image moving endlessly. Change character from Mario to Luigi or Waluigi
 by pressing and holding their respective keys, L for Luigi, W for Waluigi.
 Hurt character when left clicking on it. Pause and start game with Spacebar key.
 
 Known bugs/problems: This program is not perfect, the program can break easily if the user
 user does not follow the instructions on the input Dialogs.
 
 Thanks to YouTube videos I got a better understanding of the subject, 
 which helped me with the program, the specific links are on the report.
 */

//Declaring global variables
PImage backgroundImage;
int backgroundX, backgroundY;
import javax.swing.JOptionPane; //imports swing package to let me use JOptionPane methods for dialogs/messages/inputs.
int[] marks = new int[3]; //Array with 3 slots/integers

void setup()
{
  background(0); //background is black, as if the lights were OFF.
  size (800, 500); //dimensions of display
  backgroundImage = loadImage("./images/background1.png"); //loading main background image

  //Receives input from the user, asks for name and surname
  String name = JOptionPane.showInputDialog(
    "Merry Christmas and Welcome!\n\n " + 
    "Sorry, I didn't get your name: ", 
    "Dasher");

  String surname = JOptionPane.showInputDialog(
    "Wonderful!\n\n " + 
    "What is your surname?", 
    "Rein");

  //Asks for the user's age, and also it displays a dialog saying the user's initals.
  int age = Integer.parseInt (
    JOptionPane.showInputDialog(
    "Nice to meet you, " + name.toUpperCase() + " " + surname.toUpperCase() +
    "\nYour initials are " + name.charAt(0) + "." + surname.charAt(0) + "." + "\n\nHow old are you?", 
    "22"));

  //prints name on console many times (number given by the user)
  for (int x = 1; x<=age; x=x+1)
  {
    println(name);
  }

  //Twelve days of Christmas verses in an Array
  String verse[] = {"", "~On the first day of Christmas my true love sent to me\n~A partridge in a pear tree", 
    "~On the second day of Christmas my true love sent to me \n~Two turtle doves, and\n~A partridge in a pear tree", 
    "~On the third day of Christmas my true love sent to me\n~Three french hens\n~Two turtle doves, and\n~A partridge in a pear tree", 
    "~On the fourth day of Christmas my true love sent to me\n~Four calling birds\n~Three french hens\n~Two turtle doves, and\n~A partridge in a pear tree", 
    "~On the fifth day of Christmas my true love sent to me\n~Five golden rings\n~Four calling birds\n~Three french hens\n~Two turtle doves, and\n~A partridge in a pear tree", 
    "~On the sixth day of Christmas my true love sent to me\n~Six geese a-laying\n~Five golden rings\n~Four calling birds\n~Three french hens\n~Two turtle doves, and\n~A partridge in a pear tree", 
    "~On the seventh day of Christmas my true love sent to me\n~Seven swans a-swimming\n~Six geese a-laying\n~Five golden rings\n~Four calling birds\n~Three french hens\n~Two turtle doves, and\n~A partridge in a pear tree", 
    "~On the eighth day of Christmas my true love sent to me\n~Eight maids a-milking\n~Seven swans a-swimming\n~Six geese a-laying\n~Five golden rings\n~Four calling birds\n~Three french hens\n~Two turtle doves, and\n~A partridge in a pear tree", 
    "~On the ninth day of Christmas my true love sent to me\n~Nine ladies dancing\n~Eight maids a-milking\n~Seven swans a-swimming\n~Six geese a-laying\n~Five golden rings\n~Four calling birds\n~Three french hens\n~Two turtle doves, and\n~A partridge in a pear tree", 
    "~On the 10th day of Christmas my true love sent to me\n~10 lords a-leaping\n~Nine ladies dancing\n~Eight maids a-milking\n~Seven swans a-swimming\n~Six geese a-laying\n~Five golden rings\n~Four calling birds\n~Three french hens\n~Two turtle doves, and\n~A partridge in a pear tree", 
    "~On the 11th day of Christmas my true love sent to me\n~11 pipers piping\n~10 lords a-leaping\n~Nine ladies dancing\n~Eight maids a-milking\n~Seven swans a-swimming\n~Six geese a-laying\n~Five golden rings\n~Four calling birds\n~Three french hens\n~Two turtle doves, and\n~A partridge in a pear tree", 
    "~On the 12th day of Christmas my true love sent to me\n~12 drummers drumming\n~11 pipers piping\n~10 lords a-leaping\n~Nine ladies dancing\n~Eight maids a-milking\n~Seven swans a-swimming\n~Six geese a-laying\n~Five golden rings\n~Four calling birds\n~Three french hens\n~Two turtle doves, and\n~A partridge in a pear tree"};

  /*Asks for user for a number between 1 and 12, which after will display the specified one of
   the twelve days of Christmas song from the array above.*/
  int number = Integer.parseInt (
    JOptionPane.showInputDialog(
    age + ", You are so young!!\n" +
    "I also printed your name on the console " + age + " times just for fun" +
    "\n\nWhat is your favorite number from 1 to 12?", 
    "12"));

  //prints the verse selected by the user (1 to 12)
  JOptionPane.showMessageDialog(
    null, 
    verse[number], 
    "Merry Christmas", 
    JOptionPane.PLAIN_MESSAGE);

  //calculation methods that will have a value returned -------
  int sumTotal = add(age, number);
  int multTotal = multiply(age, number);
  int substractTotal = substract(age, number);
  int averageTotal = average(age, number);

  //this below is used to perform and output the calculation of two numbers given by the user.
  JOptionPane.showMessageDialog(
    null, 
    "Did you know that " + age + " + " + number + " is " + sumTotal +
    "\n" + age + " multiplied by " + number + " is " + multTotal +
    "\n" + age + " substracted by " + number + " is " + substractTotal +
    "\nThe average of " + age + " + " + number + " is " + averageTotal +
    "\n\nHow cool is that?", 
    "Merry Christmas", 
    JOptionPane.PLAIN_MESSAGE);

  //Calculates the average marks for 3 marks given by the user, then says if that person was naughty or nice this year.


  for (int i = 0; i<3; i++)
  {
    marks[i] = Integer.parseInt(JOptionPane.showInputDialog("Please enter your last 3 marks obtained at school, one by one:  \n(From 0 to 100)", "85"));
  }

  if ((marks[0]+marks[1]+marks[2])/3 < 40)
  {
    JOptionPane.showMessageDialog(
      null, 
      "Ohh! looks like you've been naughty this year, " + name + "!", 
      "Merry Christmas", 
      JOptionPane.PLAIN_MESSAGE);
  } else if ((marks[0]+marks[1]+marks[2])/3 >= 40)
  {
    JOptionPane.showMessageDialog(
      null, 
      "Well done! You've been great at school this year, " + name + "!", 
      "Merry Christmas", 
      JOptionPane.PLAIN_MESSAGE);
  }

  //Yes or No option to the question
  int reply = JOptionPane.showConfirmDialog(
    null, 
    "I have a few things to do before Christmas begins\n\n " +
    "Will you help me?", 
    "I need your help!", 
    JOptionPane.YES_NO_OPTION );

  //if answer is NO, then the below message is displayed
  if (reply == 1)
  {
    JOptionPane.showMessageDialog(
      null, 
      "That's okay, thanks anyways, " + name, 
      "Merry Christmas", 
      JOptionPane.ERROR_MESSAGE);
  }

  //if answer is YES, then the below message is displayed
  if (reply == 0)
  {
    JOptionPane.showMessageDialog(
      null, 
      "That's great!  Thank you, " + name.concat(surname), 
      "Merry Christmas", 
      JOptionPane.PLAIN_MESSAGE);

    JOptionPane.showMessageDialog(
      null, 
      "It's too dark in here. Left-Click the red button to turn on the lights ", 
      "Merry Christmas", 
      JOptionPane.PLAIN_MESSAGE);

    println();
    println("HI there my friend " + name.toLowerCase() + ", Once you've turned ON the lights by Left-Clicking on the red button, I need your help with the following (Please do them in order)");
    println();
    println();
    println("1. I think the snowman is hiding a red block - hover your mouse over him to check");
    println();
    println("2. I lost a green triangle too, would you click through the Christmas Tree please, I know it's somewhere in there");
    println();
    println("3. Try and make the Snowman happy by tickling him - click and drag your mouse to tickle the Snowman");
    println();
    println("4. Change the color of the Snowman's hat by pressing the G key for green, R for red, or any key to turn it back to black");
    println();
    println("Thanks for your help! Once you are done, you may turn the lights off by Right-Clicking on the red button on the lamp");
    println();
    println("Thank you so much, " + name + "!");
  }
}


void draw() //function where animations are actioned
{ 

  //red button
  fill(255, 20, 20);
  circle(715, 270, 25);

  //if left mouse button pressed , "turn on lights"
  if ((mousePressed == true) && (mouseButton == LEFT) && (mouseX > 700 && mouseY > 255 && mouseX < 730 && mouseY < 285))
  {
    image(backgroundImage, backgroundX, backgroundY); //background image

    lamp(); //calling function I created for the lamp

    translate(-40, 150);
    snowman(); //calling function I created for the snowman

    //If lights are turned on, this message is displayed to the user
    JOptionPane.showMessageDialog(
      null, 
      "Well done! Please follow the instructions in the console area! ", 
      "Merry Christmas", 
      JOptionPane.PLAIN_MESSAGE);
  }

  //if right mouse button pressed , "turn off lights"
  if ((mousePressed == true) && (mouseButton == RIGHT) && (mouseX > 700 && mouseY > 255 && mouseX < 730 && mouseY < 285))
  {
    background(0);
  }

  fill(80, 255, 60);    //text colour
  textSize(20);
  text("By: CHRISTIAN ZACCARIA", 280, 485);
}

//----------------------------------------------------------------------------------

//returns calculated value

int add (int a, int b)
{
  return a+b;
}

int multiply (int a, int b)
{
  return a*b;
}

int substract (int a, int b)
{
  return a-b;
}

int average (int a, int b)
{
  return (a+b)/2;
}


//----------------------------------------------------------------------------------

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
  for (int y=135; y<=175; y=y+20) //y coordinate is 135, if less or equal to 175, add 20
  {
    circle(200, y, 12); //stone buttons
  }

  //Snowman's Hat
  noStroke();
  fill(50);
  rect(155, 44, 90, 15);
  rect(175, 0, 50, 58);

  //Snowman's Carrot Nose
  fill(233, 105, 43);
  triangle(195, 85, 195, 97, 225, 93);

  //Snowman's stone Eyes
  fill(50);
  circle(185, 77, 12);
  circle(215, 77, 12);

  //Snowman's arms
  stroke(50);
  strokeWeight(3);
  //left arm
  line(165, 135, 110, 110);
  line(122, 115, 120, 100);
  //right arm
  line(235, 135, 290, 110);
  line(278, 115, 280, 102);
}

//----------------------------------------------------------------------------------

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
  circle(713, 18, 10);

  //red button on lamp
  fill(255, 20, 20);
  circle(715, 270, 25);
}

//-----------------------------------------------------------------------------------

void mouseMoved() //move mouse around snowman to make red square appear
{
  if (mouseX > 100 && mouseY > 150 && mouseX < 220 && mouseY < 400)
  {
    fill(255, 0, 0);
    square(450, 380, 40);
  }
}

void mouseDragged() //tickle the snowman to make him smile
{
  if (mouseX > 100 && mouseY > 150 && mouseX < 220 && mouseY < 400)
  {
    line(140, 250, 150, 255);
    line(150, 255, 160, 255);
  }
}

void mouseClicked() //click through christmas tree to make green triangle appear
{
  if (mouseX > 400 && mouseY > 230 && mouseX < 600 && mouseY < 360)
  {
    fill(30, 255, 30);
    stroke(50);
    triangle(500, 420, 520, 380, 540, 420);
  }
}

void keyPressed()
{
  noStroke();
  if (key == 'r' || key == 'R') { //Press the R key to change the snowman's hat color to Red
    fill(#a60800);
    translate(-40, 150);
    rect(155, 44, 90, 15);
    rect(175, 0, 50, 58);
  } else if (key == 'g' || key == 'G') {  //Press the G key to change the snowman's hat color to Green
    fill(#199600);
    translate(-40, 150);
    rect(155, 44, 90, 15);
    rect(175, 0, 50, 58);
  } else {    //Hat stays black colored
    fill(50);
    translate(-40, 150);
    rect(155, 44, 90, 15);
    rect(175, 0, 50, 58);
  }
}
