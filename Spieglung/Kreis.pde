class Kreis
{
  float x;
  float y;
  float radius = 5;
  boolean followMouseBool = false;
  public Kreis(float pRadius, boolean pFollowMouse)
  {
    followMouseBool = pFollowMouse;
    radius = pRadius;
    circle(mouseX, mouseY, pRadius);
  }

  public void move()
  {
    if (this.followMouseBool == true)
    {
      followMouse();
    }

    circle(width - x, y, radius);
  }

  public void followMouse()
  {
    if(mouseX + radius/2 > width/2)
    {
      x = width/2 - radius/2;
      y = mouseY;
    }
    else {
      x = mouseX;
      y = mouseY;
    }
    
    circle(x, y, radius);
  }
}
