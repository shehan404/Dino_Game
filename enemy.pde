class Enemy {

  int ensize;
  float enX;
  float enY;
  float speed;
  float correction;
  float accelaration=0.001;


  int minen=20;
  int maxen=75;

  Enemy() {

    ensize=int(random(minen, maxen));
    enX=width+ensize*2;
    enY=b1.bottom;
    correction=24;

    speed=5;
  }


  void display() {
    fill(255);
    noStroke();
    rect(enX+singletree.width/4, enY, singletree.width/1.7, singletree.height/2);
    image(singletree, enX, enY-correction);
    // ellipse(enX,(b1.bottom+b1.bsize/2)-ensize/2,ensize,ensize);


    // speed+=accelaration;
    run();
  }


  void run() {

    enX+=-speed;


    if (enX<=-100) {

      enX=width+ensize*2;
      ensize=int(random(minen, maxen));
    }
  }
}
