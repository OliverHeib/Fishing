class Boat
{
  float x;
  float y = seaLevel - 116;
  float speed;
  PImage img;
  
  Boat(float x, float speed)
  {
    this.x = x;
    this.speed = speed;
    img=loadImage("boat.png");
  }
  
  void render()
  {
    image(img,x,y);
  }
  
  void moveRight()
  {
    if ( x < width - 150)
      x = x + speed;
  }
  
  void moveLeft()
  {
    if ( x > -100)
      x = x - speed;
  }
}