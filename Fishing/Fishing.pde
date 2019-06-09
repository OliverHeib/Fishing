int Level = 0;
int score = 0;
int initialLives = 5;
int lives = initialLives;
int currentLevel = 1;
int seaLevel = 200;
boolean hooking = false;
boolean hardDifficulty;
Shawl shawl1; 
Shawl shawl2;
Shawl shawl3;
Boat boat1;
Hook hook1;
Shark shark1;
Shark shark2;
Shark shark3;
Bubble bubble1;
Bubble bubble2;

void setup()
{
 size(700,1000);
 boat1 = new Boat((width/2) - 100 ,5);
 hook1 = new Hook(width/2, seaLevel, 5);
 shawl1 = new Shawl(50,500,2,9);
 shawl2 = new Shawl(50,500,2,16);
 shawl3 = new Shawl(50,500,3,16);
 shark1 = new Shark(height, width, 3);
 shark2 = new Shark(height, width, 4);
 shark3 = new Shark(height, width, 5);
 bubble1 = new Bubble(false);
 bubble2 = new Bubble(false);
}

void draw()
{
  if (Level == 0)
  {
    background (0);
    textSize(50);
    text("Press space to start\n\nOr 'h' for hard mode\n(fish have projectiles)", (width/2)-230, height/2);
  }
  else if (Level == 1)
  {
    background (0, 0, 255);
    fill(0, 0,100);  
    rect(0, seaLevel, width, height);
    boat1.render();
    shawl1.render();
    if (hardDifficulty)
      Bubbles();
    
    fill(0,0,0);
    textSize(30);
    text("Level 1", (width/2)-50, 30);
    fill(255, 0,0);
    textSize(20);
    text("Lives: "+lives, 10, 50);
    text("Score: "+score, 10, 70);
    if (hooking)
    {
      hook1.render();
    }
  }
  else if(Level == 2)
  {
    background (0, 0, 255);
    fill(0, 0,100);  
    rect(0, seaLevel, width, height);
    boat1.render();
    shawl1.render();
    
    fill(0,0,0);
    textSize(30);
    text("Level 2", (width/2)-50, 30);
    fill(255, 0,0);
    textSize(20);
    text("Lives: "+lives, 10, 50);
    text("Score: "+score, 10, 70);
    if (hooking)
    {
      hook1.render();
    }
    shark1.update();
  }
  else if(Level == 3)
  {
    background (0, 0, 255);
    fill(0, 0,100);  
    rect(0, seaLevel, width, height);
    boat1.render();
    shawl2.render();
    
    fill(0,0,0);
    textSize(30);
    text("Level 3", (width/2)-50, 30);
    fill(255, 0,0);
    textSize(20);
    text("Lives: "+lives, 10, 50);
    text("Score: "+score, 10, 70);
    if (hooking)
    {
      hook1.render();
    }
    shark1.update();
  }
  else if(Level == 4)
  {
    background (0, 0, 255);
    fill(0, 0,100);  
    rect(0, seaLevel, width, height);
    boat1.render();
    shawl1.render();
    if (hardDifficulty)
      Bubbles();
    
    fill(0,0,0);
    textSize(30);
    text("Level 4", (width/2)-50, 30);
    fill(255, 0,0);
    textSize(20);
    text("Lives: "+lives, 10, 50);
    text("Score: "+score, 10, 70);
    if (hooking)
    {
      hook1.render();
    }
    shark2.update();
  }
  else if(Level == 5)
  {
    background (0, 0, 255);
    fill(0, 0,100);  
    rect(0, seaLevel, width, height);
    boat1.render();
    shawl2.render();
    
    fill(0,0,0);
    textSize(30);
    text("Level 5", (width/2)-50, 30);
    fill(255, 0,0);
    textSize(20);
    text("Lives: "+lives, 10, 50);
    text("Score: "+score, 10, 70);
    if (hooking)
    {
      hook1.render();
    }
    shark2.update();
  }
  else if(Level == 6)
  {
    background (0, 0, 255);
    fill(0, 0,100);  
    rect(0, seaLevel, width, height);
    boat1.render();
    shawl1.render();
    if (hardDifficulty)
      Bubbles();
    
    fill(0,0,0);
    textSize(30);
    text("Level 6", (width/2)-50, 30);
    fill(255, 0,0);
    textSize(20);
    text("Lives: "+lives, 10, 50);
    text("Score: "+score, 10, 70);
    if (hooking)
    {
      hook1.render();
    }
    shark3.update();
  }
  else if(Level == 7)
  {
    background (0, 0, 255);
    fill(0, 0,100);  
    rect(0, seaLevel, width, height);
    boat1.render();
    shawl2.render();
    
    fill(0,0,0);
    textSize(30);
    text("Level 7", (width/2)-50, 30);
    fill(255, 0,0);
    textSize(20);
    text("Lives: "+lives, 10, 50);
    text("Score: "+score, 10, 70);
    if (hooking)
    {
      hook1.render();
    }
    shark3.update();
  }
  else if(Level == 8)
  {
    background (0, 0, 255);
    fill(0, 0,100);  
    rect(0, seaLevel, width, height);
    boat1.render();
    shawl3.render();
    
    fill(0,0,0);
    textSize(30);
    text("Level 8", (width/2)-50, 30);
    fill(255, 0,0);
    textSize(20);
    text("Lives: "+lives, 10, 50);
    text("Score: "+score, 10, 70);
    if (hooking)
    {
      hook1.render();
    }
    shark1.update();
  }
  else if(Level == 9)
  {
    background (0);
    textSize(50);
    fill(66, 244, 179); 
    text("You Win\n\n Your score is: "+score, (width/2)-230, height/2);
    fill(255);
    textSize(20);
    text("Lives: "+lives, 10, 50);
  }
  else if(Level == -1)
  {
    background (0);
    textSize(50);
    fill(255, 0,0); 
    text("Game Over\n\n\n Press space\n to retry level", (width/2)-150, height/2-70);
    fill(255, 0,0);
    textSize(20);
    text("Lives: "+lives, 10, 50);
  }
  else if(Level == -2)
  {
    background (0);
    textSize(50);
    fill(255, 0,0); 
    text("Game Over\n\n\n press space\n to restart Game\n Your score is: "+score, (width/2)-150, height/2-70);
  }
  else if (Level == -3)
  {
    background (0);
    textSize(50);
    fill(255); 
    text("         You win \n\n\n      Press space \n      to go to the \n       next level", (width/2)-230, height/2);
  }
}

void keyPressed()
{
  if(key == 32)
  {
    if (Level == 0 || Level == -1)
    {
      Level = currentLevel;
      score = 0;
      shawl1.Initialize();
      shawl2.Initialize();
    }
    else if (Level == -2)
    {
      currentLevel = 1;
      Level = currentLevel;
      lives = initialLives;
      score = 0;
      shawl1.Initialize();
      shawl2.Initialize();
    }
    else if (Level == -3)
    {
      Level = currentLevel;
      shawl1.Initialize();
      shawl2.Initialize();
    }
    else
    {
      if (hooking == false)
      {
        hooking = true;
        hook1.initiate(boat1.x);
      }
    }
  }
  if(key == 'h')
  {
    if (Level == 0)
    {
      hardDifficulty = true;
      Level = currentLevel;
      score = 0;
      shawl1.Initialize();
      shawl2.Initialize();
    }
  }
  if(key == 'd')
  {
    if (Level > 0)
      boat1.moveRight();
  }
  if(key == 'a')
  {
    if (Level > 0)
      boat1.moveLeft();
  }
}

void Bubbles()
{
  if (!bubble1.floating)
  {
    int rand = (int)random(0,300);
    if (rand == 5)
    {
      int rand2 = (int)random(0,8);
      bubble1.initiate(rand2);
      bubble1.floating = true;
    }
  }
  else
  {
    bubble1.move();
  }
  
  if (!bubble2.floating)
  {
    int rand = (int)random(0,300);
    if (rand == 5)
    {
      int rand2 = (int)random(0,8);
      bubble2.initiate(rand2);
      bubble2.floating = true;
    }
  }
  else
  {
    bubble2.move();
  }
}
