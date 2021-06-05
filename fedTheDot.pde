String gameState;
int numDrops;
int dropInterval;
int activeDrops;
int caughtDrops;
int totalTime;
int currentTime;
boolean gameOver = false;
Catcher c;
Drop[] drops;
Timer dropTimer;
Timer countDownTimer;
void setup()
{
  textSize(30);
  size(900, 600);
  gameState = "Title";
  size(900, 600);
  background(150);
  c = new Catcher();
  numDrops = 50;
  drops = new Drop[numDrops];
  for (int x = 0; x<numDrops; x++)
  {
    drops[x] = new Drop();
  }
  activeDrops = 0;
  dropInterval = 500;
  dropTimer = new Timer(dropInterval);
  dropTimer.start();
  currentTime = 30;
  countDownTimer = new Timer(1000);
}

void draw()
{
  clearBackground();
  if (gameState == "Title")
  {
    title();
  } else if (gameState == "Game"){
    game();
  } else if (gameState == "Win")
  {
    win();
  } else if (gameState == "Lose")
  {
    lose();
  }
}
void title()
{
  background(150);
    textAlign(CENTER);
    fill(0);
    text("Feed The Dot!", 450, 300);
    text("Press any key to begin", 450, 350);
    if (keyPressed == true || mousePressed==true)
    {
      background(150);
      gameState = "Game";
    }
}
void game()
{
  background(150);
  c.update();
  c.display();

  if (dropTimer.complete())
  {
    if (activeDrops < numDrops)
    {
      activeDrops++;
    }
    dropTimer.start();
  }

  if (countDownTimer.complete())
  {
    currentTime--;
    if (currentTime>0)
    {
      countDownTimer.start();
    }
  }

  for (int x = 0; x<activeDrops; x++)
  {
    drops[x].update();
    drops[x].display();
    if (intersect(c, drops[x]))
    {
      drops[x].caught();
      c.getBig();
      caughtDrops++;
    }
  }
  fill(255);
  textSize(15);
  text("Total drops caught: " + caughtDrops, 225, 575); 
  text("Timer: " + currentTime + " seconds left", 500, 575);
  if (!(activeDrops == caughtDrops) && currentTime == 0)
  {

    if (currentTime == 0)
    {
      totalTime = 30;
    }
    gameState = "Lose";
  }
  else if(activeDrops == caughtDrops)
  {
    gameState = "Win";
    totalTime = 30-currentTime;
  }
}
void win()
{
  background(150);
  textAlign(CENTER);
  fill(0);
  textSize(25);
  text("You Win! \n Time Taken: " +  totalTime + " seconds \n Score: " +caughtDrops+ "\n To reset press any key", 450, 250);
  if (keyPressed == true || mousePressed==true)
  {
    reset();
  }
}
void lose()
{
  background(150);
  textAlign(CENTER);
  fill(0);
  textSize(25);
  text("You Lost! \n Time Taken: " +  totalTime + " seconds \n Score: " +caughtDrops+ "\n To reset press any key", 450, 250);
  if (keyPressed == true || mousePressed==true)
  {
    reset();
  }
}
void reset()
{

  gameState = "Game";
  activeDrops = 0;
  caughtDrops = 0;
  currentTime = 30;
  countDownTimer = new Timer(1000);
  for (int x = 0; x<numDrops; x++)
  {
    drops[x].reset();
  }
  c.reset();
}
void clearBackground()
{
  fill(150);
  rect(0, 0, width, height);
}
boolean intersect(Catcher c, Drop d)
{
  float distance = dist(c.x, c.y, d.x, d.y);
  if (distance < (c.w/2 + d.w/2))
  {
    return true;
  } else
  {
    return false;
  }
}
