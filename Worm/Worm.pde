int backgroundColor = 255;
Kreis k1;
void setup()
{
  k1 = new Kreis(100, 5);
  fullScreen();
  background(backgroundColor);
}

void draw()
{
  
  if(keyPressed)
  {
     background(backgroundColor);
  }
  k1.followMouse();
}
