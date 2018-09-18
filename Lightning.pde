int startX = 250;
int startY = 250;
int endX;
int endY;
float sw = 3;

void setup()
{
  size(500,500);
  background(6, 27, 61);  
}
void draw()
{
  pikachu();
  if(mousePressed == true){
    lightning(1);
    lightning(2);
    lightning(3);
    lightning(4);
  }
}
void mousePressed()
{
  startX = 250;
  startY = 250;
}

void pikachu(){
  noStroke();
  //face
  fill(252, 249, 58);
  ellipse(250, 280, 160, 130);
  ellipse(220, 296, 110, 100);
  ellipse(280, 296, 110, 100);
  //ears
  arc(225.0, 160.0, 180.0, 180.0, HALF_PI +0.1, PI -0.1, OPEN);
  arc(125.0, 260.0, 180.0, 180.0, -HALF_PI +0.1 , -0.1, OPEN);
  arc(275.0, 160.0, 180.0, 180.0, 0.1 , HALF_PI -0.1, OPEN);
  arc(375.0, 260.0, 180.0, 180.0, PI +0.1 , HALF_PI*3 -0.1, OPEN);
  //cheeks
  fill(204, 81, 77);
  ellipse(315, 300, 40, 40);
  ellipse(185, 300, 40, 40);
  //eyes
  fill(0);
  arc(220.0, 280.0, 40.0, 40.0, 0,3*HALF_PI - 0.4, OPEN);
  arc(280.0, 280.0, 40.0, 40.0, -HALF_PI+0.4, PI, OPEN);
  ellipse(250, 300, 10, 8);
  ellipse(250, 302, 6, 6);
  fill(255);
  noStroke();
  ellipse(273,280, 15, 15);
  ellipse(228,280, 15, 15);
  strokeWeight(4);
  stroke(0);
  line(290, 258, 257, 284);
  line(210, 258, 243, 284);
  strokeWeight(3);
  line(250, 320, 260, 325);
  line(250, 320, 240, 325);
  fill(0);
  strokeWeight(0.9);
  //black parts of the ears
  arc(225.0, 160.0, 180.0, 180.0, HALF_PI +(HALF_PI*0.42), PI -0.1,OPEN);
  arc(125.0, 260.0, 180.0, 180.0, -HALF_PI +0.1 , -(HALF_PI*0.6), OPEN);
  triangle(135, 168, 170, 235, 175, 185);
  arc(275.0, 160.0, 180.0, 180.0, 0.1 , HALF_PI -(HALF_PI*0.42), OPEN);
  arc(375.0, 260.0, 180.0, 180.0, PI + (HALF_PI*0.6), HALF_PI*3 -0.1, OPEN);
  triangle(365, 168, 330, 235, 325, 185); 
}

void reset (){
  startY = 250;
  startX = 250;
}

void lightning(int quad){
  int var1 = ((int)(Math.random()*(int)(Math.random()*70)))+30;
  int var2 = ((int)(Math.random()*(int)(Math.random()*70)))+30;
  stroke(250, 255,(int)(Math.random()*255));
  strokeWeight(sw);
  if (quad == 1) {
    while(endY >0 && endX>0){
        strokeWeight(sw);
        endX = startX - (int)(Math.random()*var1);
        endY = startY - (int)(Math.random()*var2);
        line(startX, startY, endX, endY);
        startX = endX;
        startY = endY;
        if (sw>1){
          sw = sw - 0.01;
        }
      }
  }
  if (quad == 2){
     while(endY>0 && endX<500){
       strokeWeight(sw);
       endX = startX + (int)(Math.random()*var1);
       endY = startY - (int)(Math.random()*var2);
       line(startX, startY, endX, endY);
       startX = endX;
       startY = endY;
       if (sw>1){
         sw = sw - 0.01;
       }        
      }
   }
  
  if (quad == 3){
     while(endY<500 && endX>0){
       strokeWeight(sw);
       endX = startX - (int)(Math.random()*var1);
       endY = startY + (int)(Math.random()*var2);
       line(startX, startY, endX, endY);
       startX = endX;
       startY = endY;
       if (sw>1){
         sw = sw - 0.01;
       }       
     }
  }   
    if (quad == 4){
      while(endY<500 && endX<500){
        strokeWeight(sw);
        endX = startX + (int)(Math.random()*var1);
        endY = startY + (int)(Math.random()*var2);
        line(startX, startY, endX, endY);
        startX = endX;
        startY = endY;
        if (sw>1){
          sw = sw - 0.01;
        }        
      }
    }
    startX = 250;
    startY = 250;
    sw = (int)(Math.random()*3+1);
  }
  
