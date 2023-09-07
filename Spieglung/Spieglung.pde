int backgroundColor = 255;

Kreis k1;

void setup()
{
  fullScreen();
  background(backgroundColor);
  k1 = new Kreis(50);
}

void draw()
{
  background(backgroundColor);
  rect(width/2 -10, 0, 20, height);
  k1.followMouse();
  
}
