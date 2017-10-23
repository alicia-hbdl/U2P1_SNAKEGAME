class Snake
{
  int Scale;
  int X;
  int Y;
  color Green;
  int YS;
  int XS; 
  Snake() 
  {
    Score = 0;
    HighScore = 0;
    XS = 1;
    YS = 0;
    Scale = 20;
    X = 0;
    Y = 0;
    Green = color(#00C618);
  }

  void Move()
  {
    X = X+XS*Scale;
    Y = Y+YS*Scale;
    X = constrain(X, -Scale, width);
    Y = constrain(Y, -Scale, height);
  }
  void Render()
  {
    fill(Green);
    rect(X, Y, Scale, Scale);
  }
  void keyPressed()
  {
    if (key==CODED)
    {
      if (keyCode == UP)
      {
        XS = 0;
        YS = -1;
      }
      if (keyCode == DOWN)
      {
        XS = 0;
        YS = 1;
      }
      if (keyCode == LEFT)
      {
        XS = -1;
        YS = 0;
      }
      if (keyCode == RIGHT)
      {
        XS = 1;
        YS = 0;
      }
    }
  }
}