int numDie = 0;
void setup()
{
  size(500,500);
  textAlign(CENTER);
  noLoop();
}
  void draw()
{
  background(#DDB4F7);
  for(int y = 20; y< 500; y= y+60){
    for(int x = 10; x <500; x = x +70){
    Coin bob = new Coin(x,y);
    bob.show();
    numDie += bob.die;
    }
  }
      text("Total:" + numDie , 200,10);
  
}

void mousePressed(){
  numDie = 0;
  redraw();
}
//}
class Coin
{
  int die;
  int myX, myY;
  Coin(int x, int y)
  {
    flip();
    myX = x;
    myY = y;
  }
  void flip()
  {
   die = (int)(Math.random()*6)+1;
  }
  void show()
  {
    noStroke();
    fill(255);
    //ellipse(myX,myY, 50,50);
    rect(myX, myY, 50,50);
    fill(0);
    if(die == 1)
    {
      ellipse(myX+25, myY+25,10, 10);
    }else if(die ==2){
      ellipse(myX+15, myY+25,10,10);
      ellipse(myX+35, myY+25,10,10);
  }else if(die ==3){
      ellipse(myX+15, myY+30,10,10);
      ellipse(myX+35, myY+30,10,10);
      ellipse(myX+25, myY+15,10,10);
}else if(die ==3){
      ellipse(myX+15, myY+30,10,10);
      ellipse(myX+35, myY+30,10,10);
      ellipse(myX+25, myY+15,10,10);
}else if(die ==4){
      ellipse(myX+15, myY+15,10,10);
      ellipse(myX+35, myY+15,10,10);
      ellipse(myX+15, myY+35,10,10);
      ellipse(myX+35, myY+35,10,10);
}else if(die ==5){
      ellipse(myX+15, myY+15,10,10);
      ellipse(myX+35, myY+15,10,10);
      ellipse(myX+15, myY+35,10,10);
      ellipse(myX+35, myY+35,10,10);
      ellipse(myX+25, myY+25,10,10);
}
else if(die ==6){
      ellipse(myX+15, myY+12,10,10);
      ellipse(myX+35, myY+12,10,10);
      ellipse(myX+15, myY+25,10,10);
      ellipse(myX+35, myY+25,10,10);
      ellipse(myX+15, myY+37,10,10);
      ellipse(myX+35, myY+37,10,10);
}
}
}

