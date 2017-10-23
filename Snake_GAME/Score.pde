class Score
{
  int highScore;
  color Orange; 
  color Rose;
  int txt;
  int txt1;
  int txt2;
  int HR;
  int WR;
  Score()
  {
    highScore = 0;
    Orange = color(#FF7800);
    Rose = color(#D0006E);
    txt = 40;
    txt1 = 20;
    txt2 = 17;
    HR = 120;
    WR = 60;
  }
  void Render()
  {
    fill(Rose);
    textSize(txt);
    text("Snake Game", width/2, 40);
    fill(Orange);
    textSize(txt1);
    text("Alicia HOBDELL", width/2, 90);
    noStroke();
    fill(255);
    rect(0, 0, HR, WR);
    fill(Orange);
    textSize(txt2);
    text("Score: " +Score, HR/2, 35);
    fill(Orange);
    textSize(txt2);
    text ("High Score: " + HighScore, HR/2, 15);
  }
}