


Snake Snake1;
Food Food1;
Grid Grid1;
Score Score1;
int Score = 0;
int HighScore = 0;
void setup()
{
  Snake1 = new Snake();
  Food1 = new Food();
  Score1 = new Score();
  Grid1 = new Grid();
  frameRate(10);
  textAlign(CENTER, CENTER);
  size(600, 600);
}
void draw()
{ 
  Collision();
  Grid1.Render();
  Score1.Render();
  Snake1.Move();
  Snake1.Render();
  Food1.Render();
  Snake1.keyPressed();
  Collision();
  Score();
}
void Collision()
{
  if ((dist(Snake1.X, Snake1.Y, Food1.X-10, Food1.Y-10))<(Snake1.Scale))
  {
    Food1.Move();
    Score = Score+1;
  }
}

void Score()
{
  if ((dist(Snake1.X, Snake1.Y, Food1.X-10, Food1.Y-10))<(Snake1.Scale))
  {
    Score = Score+1;
  }
  if (Snake1.X>width-Snake1.Scale||Snake1.X<0||Snake1.Y<0||Snake1.Y>height-Snake1.Scale)
  {
    Score = 0;
    textSize(40);
    fill(#D0006E);
    text("Fail", width/2, height/2);
    delay(500);
  }
  if (Score > HighScore)
  {
    HighScore = Score;
    textSize(40);
    fill(#D0006E);
    text("New High Score", width/2, height/2);
  }
}