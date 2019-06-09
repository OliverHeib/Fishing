class Hook
{
  float x;
  float initix;
  float y;
  float initiy;
  float speed;
  boolean down = true;
  
  Hook(float x, float y, float speed)
  {
    this.x = x;
    this.y = y;
    this.speed = speed;
  }
  
   void initiate(float boatx)
   {
     initiy = seaLevel-115;
     y = initiy;
     initix = boatx+90;
     x = initix;
   }
  
  void render()
  {
    if (down == true)
    {
      fill(0);
      rect(x,y,10,10);
      line(boat1.x+90,initiy,x,y);
      y=y+speed;
      if (x== height-10 || y > height)
      {
       hooking = false; 
      }
    }
    else
    {
      fill(0);
      rect(x,y,10,10);
      line(boat1.x+90,initiy,x,y);
      y=y-speed;
      if (y <= seaLevel)
      {
        down = true;
        hooking = false; 
        y = 0;
        x = boat1.x;
      }
    }
  }
  
  boolean crash(Fish fish)
 {
   if (abs(this.x - (fish.x+25))<50 && abs(this.y - (fish.y+10))<20)
   {
     down = false;
     fish.dead = true;
     score = score + 1;
     return true;
   }
   else
   {
    return false; 
   }
 }
 
  boolean crash(Shark shark)
 {
   if (abs(this.x - (shark.x+25))<50 && abs(this.y - (shark.y+10))<20)
   {
     down = false;
     score = score + 1;
     return true;
   }
   else
   {
    return false; 
   }
 }
}
