class Grid
{
  color Bg;
  color Line;
  Grid()
  {
    Bg = color(255);
    Line = color (250);
  }
  void Render()
  {
    background(Bg);
    stroke(Line);
    for (int i=0; i<width; i+=20.0)
    {

      line(i, 0, i, height);
    }
    for (int i=0; i<height; i+=20.0)
    {

      line(0, i, width, i);
    }
  }
}