class Bubble
{
  float x;
  float initix;
  float y;
  float initiy;
  float speed;
  boolean floating = false;
  
  Bubble(boolean tf)
  {
    this.floating = tf;
  }
  
  void initiate(int thatFish)
  {
    if (thatFish > 5)
    {
      if(!shawl1.fishes[2][thatFish-6].dead)
      {
        this.x = shawl1.fishes[2][thatFish-6].x;
        this.y = shawl1.fishes[2][thatFish-6].y;
      }
    }
    else if (thatFish > 2)
    {
      if(!shawl1.fishes[1][thatFish-3].dead)
      {
        this.x = shawl1.fishes[1][thatFish-3].x;
        this.y = shawl1.fishes[1][thatFish-3].y;
      }
    }
    else
    {
      if(!shawl1.fishes[0][thatFish].dead)
      {
        this.x = shawl1.fishes[0][thatFish].x;
        this.y = shawl1.fishes[0][thatFish].y;
      }
    }
    
  }
  
  void move()
  {
    if (y >= seaLevel)
    {
      y = y - 2;
      fill(65, 244, 202);
      ellipse(x, y, 10, 10);
    }
    else
    {
      if (x> boat1.x && x< boat1.x +150)
      {
        lives--;
        y = 600;
        if (lives > 0 )
        {
          Level = -1; 
        }
        else
        {
          Level = -2; 
        }
        floating = false;
      }
      else
      {
        floating = false;
        y = 100;
      }
    }
  }
  
  
}
