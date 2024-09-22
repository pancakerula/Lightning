int startX = width/2;
int startY = 0;
int endX = 0;
int endY = 150;
int timeDelay = 0;
int fadedStroke = 30;
int fadedAlpha = 200;

void setup()
{
  size(500,500);
  strokeWeight(fadedStroke);
  background(101, 67, 33);
}
void draw()
{

 
  fill(70, 30, 10, 50);
  noStroke();
  rect(0, 0, width, height);
  noFill();
  strokeWeight(fadedStroke);
  stroke(255, 182, 193);
  endY = startY + (int)(Math.random()*20);
  endX = startX + (int)(Math.random()*40)-20;
  line(startX, startY, endX, endY);
  startX = endX;
  startY = endY;
 
  if(fadedStroke > 1 && fadedStroke % 2 == 0){
    fadedStroke--;
  }
  

}
void mousePressed()
{
  timeDelay = 0;
  startX = (int)(Math.random()*(width - 100) + 100);
  startY = 0;
  endX = (int)(Math.random()*(width - 100) + 100);
  endY = 400;
  fadedStroke = 30;

  
}
