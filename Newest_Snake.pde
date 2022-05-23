
//create a snake head and an arraylist for the tails
Snake snake;
ArrayList<Tail> tails;
//food object for the snake
Food food;
int totalTails;
public void setup() {
 size(570,570);
 snake = new Snake(0,0);
 tails = new ArrayList<Tail>();
 food = new Food();
 frameRate(10); 
 totalTails = 0;  
}
public void draw() {
  background(0); 
  drawDashboard();
  
  food.show();
  food.update(snake.x, snake.y);
  snake.show();
  snake.move();
  eatFood();  
  ifCrash();  
  follow();   
 
}

public void eatFood() {
 if(food.x  == snake.x && food.y  == snake.y ) {
   if(totalTails == 0) {
    tails.add(new Tail(snake.px, snake.py));
    totalTails++;
    food.pickLoc();
   }
   else if(totalTails != 0){
    tails.add(new Tail(tails.get(totalTails-1).px, tails.get(totalTails-1).py)); 
    totalTails++;
    food.pickLoc();
   }
 }
}


public void follow() {
 for(int i = 0; i<tails.size(); i++) {
  if(i==0) {  
   tails.get(i).show(snake.px, snake.py); 
  }
  else
  {  
  tails.get(i).show(tails.get(i-1).px, tails.get(i-1).py);
  }
 }
}


public void ifCrash() {
 if(snake.x < 0 || snake.x >= width ) {
  restart();
 }
 else if(snake.y < 0 || snake.y >= height-30) {
   restart();
 }
 
 for(int i = 0; i< tails.size(); i++) {
   
  if(snake.x == tails.get(i).x && snake.y == tails.get(i).y){
    restart();
  }
 }
}



public void drawDashboard(){
  fill(255);
  stroke(255,0,0);
  line(0,height-30, width, height-30);  
  textSize(17);
  text("Score:"+totalTails, 15, height-15);  
}

public void respawnInCenter(){
  snake.x = (width/2)-((width/2)%15);
   snake.y = (height/2)-((height/2)%15);
}


public void restart(){
 respawnInCenter();
  food.pickLoc();  //pick a random location for the food as well
  while(!tails.isEmpty()) {
    tails.remove(0);
  }
  totalTails = 0; 
}
