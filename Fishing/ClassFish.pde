class Fish
{
  float x;
  float y;
  PImage img;
  PImage img1;
  PImage img2;
  PImage img3;
  PImage imgR;
  PImage img1R;
  PImage img2R;
  PImage img3R;
  PImage theImg;
  boolean left = true;
  boolean dead = false;
  
  Fish(float x, float y)
  {
    this.x = x;
    this.y = y;
    img=loadImage("fish.png");
    img1=loadImage("fish1.png");
    img2=loadImage("fish2.png");
    img3=loadImage("fish1.png");
    imgR=loadImage("fishR.png");
    img1R=loadImage("fish1R.png");
    img2R=loadImage("fish2R.png");
    img3R=loadImage("fish1R.png");
    theImg=img;
  }
  
  void render()
  {
    image(theImg,x,y);
    hook1.crash(this);
  }
  
  void move(float speed)
  {
    if (y >= seaLevel)
    {
      if (x == 0 || x == width-100)
      {
        y = y - 30;
        left = !left;
        
        if (left)
        {
         theImg = img;
         x = x - speed; 
        }
        else
        {
          theImg = imgR;
          x = x + speed;
        }
      }
      else
      {
        if (left)
        {
          int rand = (int)random(0,10);
          if (rand == 5)
          {
            if (theImg == imgR || theImg == img)
            {
              theImg = img1;
            }
            else if(theImg == img1R || theImg == img1)
            {
              theImg = img2;
            }
            else if(theImg == img2R || theImg == img2)
            {
              theImg = img3;
            }
            else
            {
               theImg = img;
            }
          }
         x = x - speed; 
        }
        else
        {
          int rand = (int)random(0,10);
          if (rand == 5)
          {
            if (theImg == imgR || theImg == img)
            {
              theImg = img1R;
            }
            else if(theImg == img1R || theImg == img1)
            {
              theImg = img2R;
            }
            else if(theImg == img2R || theImg == img2)
            {
              theImg = img3R;
            }
            else
            {
               theImg = imgR;
            }
          }
          x = x + speed;
        }
      }
    }
    else
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
       y = 600;
     }
    }
  }
  
  void death()
  {
    if (y > seaLevel)
    {
      image(img,x,y);
      y = y - hook1.speed;
    }
  }
  
  void update(float speed)
  {
      move(speed);
      render();
  }
  
}
