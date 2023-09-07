class Kreis
{
  float radius = 5;
  public Kreis(float pRadius)
  {
    radius = pRadius;
    circle(mouseX, mouseY, pRadius);
  }
  
  public void followMouse()
  {
     circle(mouseX, mouseY, radius); 
  }
  
}
