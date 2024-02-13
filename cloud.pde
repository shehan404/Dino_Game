class Cloud{
  float x;
  float y;
  float speed;
  float choosex;
 
  
  

  Cloud(){
   
  choosex=int(random(0,3));
  y=int(random(100,200));
  speed=0.5;
  
  if (choosex==0){x=width-100;}
  if (choosex==1){x=width+200;}
  if (choosex==2){x=width+500;}
  if (choosex==3){x=width+800;}
  
    }



void display(){
  
 

 image(cl,x,y);
 x+=-speed;
 
 if(x<=-100){x=width;
 
 
 }
//ellipse(x,y,20,20);


}



}
