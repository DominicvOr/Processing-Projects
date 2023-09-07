class Ball {
  float x;
  float y;
  float rad;
  float gravity = 9.81;
  float speedY = 0;

  public Ball(float pX, float pY, float pRad)
  {
    x = pX;
    y = pY;
    rad = pRad;
    circle(x, y, rad);
  }

  public void move()
  {
    /*if (millis()-lastTime >= 1000)
    {
      speedY = speedY + gravity/60;
      
    }*/
    speedY = speedY +gravity/fps;
    if(y + rad >= height)
    {
      speedY = speedY * -0.9;
    }
    y = (y + speedY);
    circle(x, y, rad);
  }
  
  public float getSpeed()
  {
     return speedY; 
  }
}
