int score = 0;
  String level="1";
  float speed;
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
    


fill(255,255,255);
 text("Your score is now: " + score, 10,30);
 
 fill(255,255,0);
 text("Level "+ level,900,30);

if(y>720){
   checkCatch(x);
  x = (int) random(width);
  

  if(level == "3"){
    
 speed = random(9, 17);
// speed=1;
}
  y=0;
}

if(score>=0 && score<30){
y+=9;
  
}


if(score>=30 && score<60){

  level = "2";
//14
y+=14;

}

else{
  if(score>=60 && score<90){

//println(speed);
y+=speed;
  fill(255,255,0);
level = "3";

println("test");

}


}


if(score>=90){
  fill(0,255,0);
text("YOU WON!", 360, 360);
  noLoop(); 
}

}

}


 void checkCatch(int x){
         if (x > mouseX && x < mouseX+100)
            score+=10;
         else if (score > 0) 
            score-=10;
           // exit();
      
    }
