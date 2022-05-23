public class Tail {
  float x;
  float y;
  float px;
  float py;
  
  public Tail(float xIn, float yIn) {
    x = xIn;
    y = yIn; 
  }
  
  public void show(float xIn, float yIn) {
   px = x;
   py = y;
   x = xIn;
   y = yIn;
   fill(0,255,0);
   rect(x, y, 20, 20);
  }
}
