class Gline {

  float lsize;
  float pose;
  float x;
  float linex;
  float marg;
  float dy;

  int edgx;
  int edgy;

  int edgeshift;
  int edgedifferent;


  Gline() {

    lsize=random(0, 5);
    pose=int(random(0, 1000));

    x=width+30;

    marg=4;
    dy=int(random(0, 10));

    edgx=100;
    edgy=200;

    edgeshift=width;
    edgedifferent=300;
  }


  void display() {
    linex=x+pose;
    line(-100, b1.bottom+b1.bsize/2, width, b1.bottom+b1.bsize/2);
    stroke(0);
    line(lsize+linex, dy+marg+b1.bottom+b1.bsize/2, linex, dy+marg+b1.bottom+b1.bsize/2);
    x+=-e1.speed;

    if (linex<=-100) {
      x=random(width, width+50);
    }

    edge();
  }

  void edge() {
    //int(random(100,width)); //int(random(width,100));
    image(maxmax, edgeshift, b1.bottom+b1.bsize/2-4);
    image(maxmin, edgeshift-edgedifferent, b1.bottom+b1.bsize/2-4);
    edgeshift+=-e1.speed;
    // edgedifferent+=-20;
    // if(edgedifferent<0){edgedifferent=300;}

    if (edgeshift<=-100) {
      edgeshift=width+edgedifferent;
    }
  }
}
