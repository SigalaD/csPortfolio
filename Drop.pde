class Drop {
  float x, y, w, h;
  float speedY;
  color c;

  Drop() {
    x = random(width);
    y = 0;
    w = 16;
    h = 16;
    speedY = random(3, 5);
    int R = (int)random(0, 255);
    int G = (int)random(0, 255);
    int B = (int)random(0, 255);
    c = color(R, G, B);
  }

  void update() {
    y += speedY;

    if (y> height + h/2) {
      y = -h/2;
    }
  }

  void display() {
    fill(c);
    circle(x, y, w);
  }

  void caught() {
    speedY = 0;
    y = 800;
  }
  void reset()
  {
    y = 0;
    speedY = random(3, 5);
    int R = (int)random(0, 255);
    int G = (int)random(0, 255);
    int B = (int)random(0, 255);
    c = color(R, G, B);
  }
}
