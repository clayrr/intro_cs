float x;
float y;
float w;
float l;
float numWindows;

void setup(){
  size(600, 600);
  building(400, 600, 300, 400, 7);
  building(100, 600, 100, 500, 2);

}

void building(float x, float y, float w, float l, float numWindows){
  fill(120, 120, 215);
  rect((x - w/2), y, w, -l);
  
  //door
  fill(255);
  rect(x- w/8, y, w/4, -l/5);
  
  //float w1 = x + w/3;
  //windows
  int numberChange = 1;

  while (numberChange <= numWindows ){
    rect(x - w/2 + numberChange*w/(numWindows +1), y - l/2, 25, 25);
    numberChange += 1;
  }

  
  

  /*windows
  fill(255);
  rect(x + 10, y - 100, 15, -10);
  
  //door
  rect(x + w/3, y, w/5, -l/5);
*/
}
