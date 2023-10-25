Ctaxi[] WallE;
boolean alive = true;
void setup()
{
  size(500,500);
  WallE = new Ctaxi[50];
  for(int i = 0; i<WallE.length; i++)
    WallE[i] = new Ctaxi();
}
void draw()
{
  background(0);
  for(int i = 0; i<WallE.length; i++)
  {
  WallE[i].move();
  WallE[i].show();
  }
}
void mousePressed()
{
  redraw();
} // doesn't work atm
class Ctaxi
{
  int myColor;
  int myColortwo;
  int myX, myY;
  Ctaxi()
  //Ctaxi(int x, int y)
  {
    //initialize member variables
    myColor = color((int)(Math.random()*255), (int)(Math.random()*255),(int)(Math.random()*255));
    myColortwo = color(0,0,255);
    myX = 250;
    myY = 250;
   // myX = (int)(Math.random()*500);
   // myY = (int)(Math.random()*500);
  }
  void move()
  {
    //myX = myX + (int)(Math.random()*6)-1;
    //myY = myY + (int)(Math.random()*6)-1;
  }
  void show() //draw
  {
    fill(myColor);
    //weeee
    if(alive == true)
    ellipse(myX, myY, 50, 50);
    if(get(mouseX,mouseY) != color(0,0,0))
    alive = false;
    if(mouseX>myX)
      myX = myX + (int)(Math.random()*5)-3;
      else
      myX = myX + (int)(Math.random()*5)-1;
    if(mouseY>myY)
      myY = myY + (int)(Math.random()*5)-3;
      else
      myY = myY + (int)(Math.random()*5)-1;
  } //end show
} //end class
