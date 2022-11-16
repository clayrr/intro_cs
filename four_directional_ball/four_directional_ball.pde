int x = 20;
int y = 20;

void setup(){
  size(500, 500);

}
void draw(){
  background(0);
  
  circle(x, y, 20);
  
  //going down, add x bc 
  if (y < 480 && x <=20) {
    y = y + 3;
  }
  
  if (y >= 480 && x <= 480){
   x = x + 3;
  }
  //x >= 480 && y >= 20
  
  if (y >= 20 && x >= 480){
    y = y - 3;
    
  }
  
  // move left
  if (y <= 20 && x >= 20) {
    x = x - 3;
  }
  
}
