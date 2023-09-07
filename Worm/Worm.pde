int backgroundColor = 255;
Kreis k1;
void setup()
{
  k1 = new Kreis(1, 40);
  fullScreen();
  background(backgroundColor);
}

void draw()
{
  background(backgroundColor);
  k1.followMouse();
}
