int score = 0;
  String level = "1";
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
    rect(mouseX, 630, 90, 90);
    
y+=9;

fill(255,255,255);
 text("Your score is now: " + score, 10,30);
 
 fill(255,255,0);
 text("Level "+ level,900,30);
 
if(y>720){
   checkCatch(x);
  x = (int) random(width);
  y=0;


}

if(score>=30 && score<60){

  level = "2";
y+=5;

}

if(score>=60 && score<7000){
float speed =  random(1, 17);
y+=speed;
  fill(255,255,0);
level = "3";


}

}

}


 void checkCatch(int x){
         if (x > mouseX && x < mouseX+100)
            score+=10;
         else if (score > 0) 
            score--;
           // exit();
      
    }
