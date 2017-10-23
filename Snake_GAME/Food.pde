class Food
{
  int X ;
  int Y;
  color Col;
  int Scale;
  color Orange;
  Food()
  { 
    X = 10+int(random(1, 30))*20;
    Y = 10+int(random(1, 30))*20;
    X = constrain(X, Scale, width-Scale);
       Y = constrain(Y, Scale, width-Scale);
    Scale = 20;
    Orange = color(#FF7800);
  }
  void Render()
  {
    noStroke();
    fill(Orange);
    ellipse(X, Y, Scale, Scale);
  }
  void Move ()
  {
    X = 10+int(random(1, 30))*20;
    Y = 10+int(random(1, 30))*20;
    ellipse(X, Y, Scale, Scale);
    noStroke();
    fill(Orange);
  }
}