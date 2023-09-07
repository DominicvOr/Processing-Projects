class Kreis
{
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
     if(this.followMouseBool == true)
     {
        followMouse(); 
     }
     
     circle(width -mouseX, mouseY, radius);
  }
  
  public void followMouse()
  {
     circle(mouseX, mouseY, radius); 
  }
  
}
