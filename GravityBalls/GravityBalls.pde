int backgroundColor = 255;
double lastTime;
int fps = 60;

ArrayList<Ball> balls;

void setup()
{
  background(backgroundColor);
  frameRate(fps);
  fullScreen();
  balls = new ArrayList<Ball>();
}

void draw()
{
  background(255);
  for (int i = 0; i < balls.size(); i++)
  {
    balls.get(i).move();
    if(balls.get(i).getSpeedY() < 1 &&  balls.get(i).getSpeedY() > 0 && balls.get(i).y > height - 20)
    {
       balls.remove(i); 
    }
  }
  if(mousePressed)
  {
    balls.add(new Ball(mouseX, mouseY, 10, random(-30,30)));
  }
  
  
  
}

void mouseClicked()
{
  balls.add(new Ball(mouseX, mouseY, 10, random(0,30)));
}
