public class Snake {
  float x;
  float xSpeed;
  float ySpeed;
  float y;
  float px;
  float py;
  public final int  SIZE = 20;
  
 public Snake(float xIn, float yIn) {
   x = xIn;
   y = yIn;
   xSpeed = 15;
 }
 
 public void move() {
   if(keyCode == UP) {
     ySpeed = -15;
     xSpeed = 0;
   }
   else if(keyCode == DOWN) {
     ySpeed = 15;
     xSpeed = 0;
   }
   else if(keyCode ==LEFT) {
     xSpeed = -15;
     ySpeed = 0;
   }
   else if(keyCode == RIGHT) {
     xSpeed = 15;
     ySpeed = 0;
   }
 }
 
 public void show() {
  px = x;
  py = y;
  x += xSpeed;
  y += ySpeed;
  fill(0,255,0);
  stroke(255,0,0);
  rect(x,y,SIZE,SIZE);
 }
}
