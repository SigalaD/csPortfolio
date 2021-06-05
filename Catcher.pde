class Catcher
{
  float x, y, w, h;

  Catcher()
  {
    x = width/2;
    y = height/2;
    w = 32;
    y = 32;
  }
  
  void update(){
   x = mouseX;
   y = 500;
  }
  
  void display()
  {
    clearBackground();
    fill(255);
    circle(x,y,w);
  }
  void getBig()
  {
    w += 2;
  }
  void reset()
  {
    w = 32;
  }

}
