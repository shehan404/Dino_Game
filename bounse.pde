Ball b1;
Enemy e1;
Enemy e2;
Marks m1;
ArrayList <Cloud> c1;
ArrayList <Gline> l1;

int linedensity = 100;
int clouddensity = 4;

PImage cl;
PImage up;
PImage down;
PImage singletree;
PImage maxmax;
PImage maxmin;
PImage dino;
PImage out;
PImage gameover;

PFont f;
int a;

int gamestatus;
float globalspeed;



void setup() {

  size(900, 400);
  frameRate(60);

  //noCursor();


  cl= loadImage("./img/cld.png");
  up=loadImage("./img/up.png");
  down=loadImage("./img/down.png");
  singletree=loadImage("./img/singletree.png");
  maxmax=loadImage("./img/maxmax.png");
  maxmin=loadImage("./img/maxmin.png");
  out=loadImage("./img/out.png");
  gameover=loadImage("./img/gameover.png");

  f=createFont("./fonts/ARCADE_N.TTF", 10);

  b1 = new Ball();
  e1 = new Enemy();
  e2 = new Enemy();
  m1 = new Marks();
  l1 = new ArrayList <Gline> ();
  c1 = new ArrayList <Cloud>();

  for (int i=0; i<linedensity; i++) {
    l1.add(new Gline());
  }

  for (int j=0; j<clouddensity; j++) {
    c1.add(new Cloud());
    //l1.add(new Gline());
  }
}





void draw () {
  background(255);

  for (int i=0; i<clouddensity; i++) {
    c1.get(i).display();
  }


  for (int i=0; i<linedensity; i++) {
    l1.get(i).display();
  }


  b1.display();
  e1.display();
  m1.display();




  over();
}


int over() {

  if ( (b1.xpos+dino.width>=e1.enX)&&
    (b1.xpos<=e1.enX+singletree.width)&&
    ((b1.ypos-b1.correction)+dino.height>=e1.enY-e1.correction)&&
    (b1.ypos-b1.correction<=e1.enY+singletree.height)            ) {

    println("out");
    e1.speed=0;
    m1.scoreincrimant=0;

    for (int i=0; i<clouddensity; i++) {
      c1.get(i).speed=0;
    }

    image(gameover, (width-gameover.width)/2, (height-gameover.height*2)/2);
    gamestatus=1;


    if (keyPressed) {
      if (key==' ') {

        gamestatus=0;
        m1.score=0;
        e1.enX=width+e1.ensize*2;
        e1.speed=5;
        m1.scoreincrimant=0.15;

        for (int i=0; i<clouddensity; i++) {
          c1.get(i).speed=0.5;
        }
      }
    }
  } else {
    println("go");
    gamestatus=0;
  }

  return gamestatus;
}
