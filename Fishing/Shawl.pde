class Shawl
{
  float x;
  float y;
  float speed;
  int size;
  Fish[][] fishes;
  
  Shawl(float x, float y, float speed, int size)
  {
    //float size =sqrt(size);
    this.size = size;
    this.x = x;
    this.y = y;
    this.speed = speed;
  }
  
  void Initialize()
  {
    fishes = new Fish[(int)sqrt(size)][(int)sqrt(size)];
    int startx = 0;
    int starty = 0;
    for (int i = 0; i<(int)sqrt(size); i++)
    {
      for (int k = 0; k<(int)sqrt(size); k++)
      {
        fishes[i][k] = new Fish(x + startx, y + starty);
        startx = startx + 100;
      }
      starty = starty + 40;
      startx = 0;
    }
  }
  
  void render()
  {
    int theDead = 0;
    for (int i = 0; i<(int)sqrt(size); i++)
    {
      for (int k = 0; k<(int)sqrt(size); k++)
      {
        if ( !fishes[i][k].dead)
        {
          fishes[i][k].update(speed);
        }
        else
        {
          theDead++;
          fishes[i][k].death();
        }
      }
    }
    if (theDead == size)
    {
      Level = -3;
      currentLevel++;
    }
  }
}