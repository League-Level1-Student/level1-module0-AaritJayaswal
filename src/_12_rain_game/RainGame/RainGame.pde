int score = 0;

  String level="1";
  
   float speed = random(5, 25);
   
 int boxX=90;
 
 int boxRange=90;
 
 void setup(){
   
  size(1280,720);
}

int x = (int) random(width);
int y = 0;

 void draw(){
   background(0,0,0); 
textSize(32);

fill(255,255,255);
text("Rain Game", 580, 360); 

fill(0, 102, 153);
text("Click and Hold to Play", 500, 400);

if(mousePressed){

  background(0,0,0);

fill(100, 150, 255);
    stroke(100,150,255);
    ellipse(x, y, 10, 20);
    
fill(210, 105, 30);
    stroke(210,105,30);
    rect(mouseX, 630, boxX, 90);
    


fill(255,255,255);
 text("Your score is now: " + score, 10,30);
 
 fill(255,255,0);
 text("Level "+ level,900,30);

if(y>720){
  
  checkCatch(x);
 
  x = (int) random(width);

 speed = random(5, 25);
 
  y=0;

}

if(score>=0 && score<30){

  y+=9;
  
  boxRange=90;
  boxX=90;

}
else{

if(score>=30 && score<60){

  level = "2";

y+=14;

boxRange=90;
boxX=90;

}

else{
  
  if(score>=60 && score<90){

    boxRange=90;
boxX=90;

y+=speed;

  fill(255,255,0);
level = "3";

}

else{
  
if(score>=90 && score<120){
  
  y+=speed;
   boxX=45;
   boxRange=45;
  level = "4";
    
}
else{
  
  win();
   
}

}

}

}

}

}


 void checkCatch(int x){
         if (x > mouseX && x < mouseX+boxRange)
            score+=10;
         else if (score > 0) 
            score-=10; 
    }
    
    
    void win(){
     fill(0,255,0);
     text("You won!",500,360);
    }
