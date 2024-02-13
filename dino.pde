class Ball{

  float bsize;
  float xpos;
  float ypos;
  float bottom;
  float top;
  float correction;
  
  int val;
  int old_val;
  int state;
  
  int im;
  int animatespeed;
  
  float dx;
  
  Ball(){
    top=100;
    bottom=250;
    bsize=30;
    xpos=200;
    ypos=bottom;
    correction=21;
    
    im=0;
    animatespeed=8;
       
    val=0;
    old_val=0;
    state=0;
    
    dx=0.06;
 
 } 
  
  void display(){
 
  
 
 
    // bottom line
  fill(255);
  noStroke();
  rect(xpos+up.width/4.5,ypos,up.width/2,up.height/2);
 
  run();
  image(dino,xpos,ypos-correction);
  
//ellipse(xpos,ypos,bsize,bsize);
  stroke(0);
  
  
  
  jump();
  
  
  }  
  
  void jump(){
    
    if(keyPressed){
      if(key==' '){
        val=1;  
      }
     }
    else{val=0;
      }
  
  if((val==1)&&(old_val==0)){
    state=1-state;
    }

  old_val=val;
  
  if (state==1){ypos+=-dx*ypos;
   if (ypos<=top){
     state=0; ypos+=dx*ypos;
    }
  }
  
  if(state==0){
    ypos+=dx*ypos;
  }
 
  if(ypos>bottom){
    ypos=bottom;
  
  }
   
}
  
  
  void run(){
  if(gamestatus==0){
  if(im>=animatespeed){
    dino=up;}
    
  else{
    dino=down;
    rect(xpos+up.width/4.5,ypos,up.width/1.9,up.height/2);
    }
    
 im=im+1;
 if(im>=animatespeed*2){
   im=0;}
   
  }
  
  
   if (gamestatus==1){
  
  im=0;
  dino=out;
  


}
  
  
 
  
  
  
  
  
  
  
  }
  
  
  
  
  
  
  
  
  
  
 }
