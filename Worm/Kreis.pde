class Kreis {
  int maxRadius;
  int minRadius;
  int getBiggerOrSmaller = 1;
  int radius = 10;
  float x = 100;
  float y = 100;
  float r = 1;
  float g = 1;
  float b = 1;

  public Kreis(int pMaxRadius, int pMinRadius) {
    maxRadius = pMaxRadius;
    minRadius = pMinRadius;
    radius = pMinRadius +5;
    circle(x, y, radius);
  }

  public void followMouse()
  {
    if (mousePressed == true)
    {
      r = random(0, 255);
      b = random(0, 255);
      g = random(0, 255);
      if (radius > maxRadius)
      {
        getBiggerOrSmaller = -1;
      }
      else if(radius < minRadius)
      {
          getBiggerOrSmaller = 1;
      }
      radius = radius + (1 * getBiggerOrSmaller);
    }
    stroke(1);
    fill(r, g, b);
    circle(mouseX, mouseY, radius);
  }
}
