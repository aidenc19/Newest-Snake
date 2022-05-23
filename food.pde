public class Food {
  PImage food;
 float x;
 float y;
 public final int SIZE = 15;
 public Food() {
   pickLoc();
 }
 
 public void show() { 
   fill(255,0,0);
   circle(x, y,15);
 }
 
 public void update(float xIn, float yIn) {
     if(xIn == x && yIn == y){
     x = random(width);
     y = random(height);
     float r = x%15.0;
     x = x-r;
     float ry = y%15.0;
     y = y-ry;
   }
 }
 
 public void pickLoc() {
  x = random(width);
  y = random(height)-45;
  if(y < 15){
   y = 0; 
   float r = x%15.0;
  x = x-r;
  }
  else{
  float r = x%15.0;
  x = x-r;
  float ry = y%15.0;
  y = y-ry;
  }

}
}
