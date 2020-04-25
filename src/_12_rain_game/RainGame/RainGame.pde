int score = 0;
 void setup(){
   
  size(1280,720);
}

int y = 0;
int x = (int) random(width);
 void draw(){
   
// background(255,125,220); 

background(0,0,0);



fill(100, 150, 255);

    stroke(100,150,255);
    
    ellipse(x, y, 10, 20);
    fill(210, 105, 30);
    stroke(210,105,30);
    rect(mouseX, 630, 90, 90);
    
y+=14;

if(y>720){
   checkCatch(x);
  x = (int) random(width);
  y=0;

}

}

 void checkCatch(int x){
         if (x > mouseX && x < mouseX+100)
            score++;
         else if (score > 0) 
            score--;
           // exit();
        println("Your score is now: " + score);
    }
