int x;
int y;
int w;
int l;

void setup(){
  size(600, 600);
  building(400, 600, 300, 400);
  building(100, 600, 30, 500);

}

void building(int x, int y, int w, int l){
  fill(120, 120, 215);
  rect((x - w/2), y, w, -l);
  
  //door
  fill(255);
  rect(x - w/5, y, w/5, -l/5);



  /*windows
  fill(255);
  rect(x + 10, y - 100, 15, -10);
  
  //door
  rect(x + w/3, y, w/5, -l/5);
*/
}
