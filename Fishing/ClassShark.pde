class Shark
{
  float x;
  float y;
  float speed;
  PImage img;
  boolean attaking = false;
  
  Shark(float x, float y, float speed)
  {
    this.x = x;
    this.y = y;
    this.speed = speed;
    img=loadImage("Shark.png");
  }                 
  
  void initiate()
  {
    int rand = (int)random(0,500);
    if (rand == 5)
    {
      x = random(50,width-80);
      y = height;
      attaking = true;
    }
  }
  
  void render()
  {
    if (y > seaLevel)
    {
      y = y - speed;
      image(img,x,y);
      if (hook1.crash(this))
      {
        attaking = false;
      }
    }
    else
    {
      lives--;
      if (lives > 0 )
      {
        Level = -1; 
      }
      else
      {
        Level = -2; 
      }
      attaking = false;
    }
  }
  
  void update()
  {
    if (attaking)
    {
      render();
    }
    else
    {
      initiate();
    }
  }
  
}
