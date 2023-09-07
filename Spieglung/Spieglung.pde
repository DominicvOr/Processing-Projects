int backgroundColor = 255;

int xRect = width/2 -10;
int yRect = 0;
int rectWidth = 20;
int rectHeight = height;

float circleRadius = 50;

Kreis k1;

void setup()
{
  fullScreen();
  background(backgroundColor);
  k1 = new Kreis(circleRadius);
  rectHeight = height;
  xRect = width/2 -10;
}

void draw()
{
  background(backgroundColor);
  fill(50);
  rect(xRect, yRect, rectWidth, rectHeight);
  line(width / 2, 0, width/2, height);
  k1.followMouse();
  
}
