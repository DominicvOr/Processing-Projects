class Ball {
  float x;
  float y;
  float rad;
  float gravity = 9.81;
  float speedY = 0;
  float speedX = 0;

  public Ball(float pX, float pY, float pRad, float pSpeedX)
  {
    x = pX;
    y = pY;
    rad = pRad;
    speedX = pSpeedX;
    circle(x, y, rad);
  }

  public void move()
  {
    /*if (millis()-lastTime >= 1000)
    {
      speedY = speedY + gravity/60;
      
    }*/
    speedY = speedY +gravity/fps;
    if(y + speedY + rad >= height)
    {
      speedY = speedY * -0.9;
    }
    if(x + speedX/fps + rad >= width || x + speedX/fps - rad <= 0)
    {
      speedX = speedX * -0.9;
    }
    x = x + speedX/fps;
    y = (y + speedY);
    circle(x, y, rad);
  }
  
  public float getSpeedY()
  {
     return speedY; 
  }
}
