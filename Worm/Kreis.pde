class Kreis {
  int maxRadius;
  int minRadius;
  int radius = 10;
  float x = 100;
  float y = 100;
  float r = 1;
  float g = 1;
  float b = 1;

  public Kreis(int pMaxRadius, int pMinRadius) {
    maxRadius = pMaxRadius;
    minRadius = pMinRadius;
    circle(x, y, radius);
  }

  public void followMouse()
  {
    if(mousePressed == true)
    {
      r = random(0, 255);
      b = random(0, 255);
      g = random(0, 255);
    }
    stroke(1);
    fill(r, g, b);
    circle(mouseX, mouseY, radius);
  }
}
