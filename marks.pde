class Marks {
  float score=0;
  float scoreincrimant;
  float oldhighscore=0;
  float highscore=0;
  String zero="00000";
  String hzero="00000";

  int marksY;


  Marks() {

    scoreincrimant=0.15;

    marksY=50;
  }


  void display() {

    score+=scoreincrimant;
    fill(0);
    textFont(f);

    text(zero, width-100, marksY);
    if (score>1) {
      zero="0000 ";
      if (score>10) {
        zero="000  ";
        if (score>100) {
          zero="00   ";
          if (score>1000) {
            zero="0    ";
            if (score>10000) {
              zero="     ";
            }
          }
        }
      }
    }


    textAlign(RIGHT);
    text(int(score), width-100, marksY);


    if ( oldhighscore<=score) {
      oldhighscore=score;

      if ( highscore<=oldhighscore) {
        highscore=oldhighscore;
      }
    }


    text("HI      ", width-170, marksY);
    text("   "+hzero, width-170, marksY);
    if (highscore>1) {
      hzero="0000 ";
      if (highscore>10) {
        hzero="000  ";
        if (highscore>100) {
          hzero="00   ";
          if (highscore>1000) {
            hzero="0    ";
            if (highscore>10000) {
              hzero="     ";
            }
          }
        }
      }
    }
    //fill(0);
    text(int(highscore), width-170, marksY);
  }
}
