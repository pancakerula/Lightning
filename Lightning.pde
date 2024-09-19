int startX = width/2;
int startY = 0;
int endX = 0;
int endY = 150;
int timeDelay = 0;
int fadedStroke = 20;

void setup()
{
  size(500,500);
  strokeWeight(fadedStroke);
  background(255, 255, 255);
}
void draw()
{
  int randomR = (int)(Math.random()*255)+5;
  int randomG = (int)(Math.random()*255)+5;
  int randomB = (int)(Math.random()*255)+5;
  background(0, 0, 0);
  
  strokeWeight(fadedStroke);
  stroke(randomR, randomB, randomG);
  endY = startY + (int)(Math.random()*30);
  endX = startX + (int)(Math.random()*40)-20;
  line(startX, startY, endX, endY);
  startX = endX;
  startY = endY;
 
  if(fadedStroke > 0){
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
