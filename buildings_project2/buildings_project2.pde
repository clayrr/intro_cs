float x;
float y;
float w;
float l;
float numWindows;
float floors;
float numFloors;
float changeFloors;
float randomFloors;
int changeBuildings;
int numBuildings;
float randomX;
float randomW;
float randomL;
float randomWindows;

void setup(){
  size(600, 600);
  
  
  numBuildings = 30;
  changeBuildings = 0;
  
  while(changeBuildings <= numBuildings){
    
    randomFloors = random(2,5);
    randomX = random(0, 600);
    randomW = random(200, 300);
    randomL = random(100, 600);
    randomWindows = random(1, 6);
    building(randomX, 600, randomW, randomL, randomWindows, randomFloors);
    changeBuildings += 1;
  }
  
  
}

void building(float x, float y, float w, float l, float numWindows, float floors){
  //note: door is ground floor, counts as 1 floor
  fill(120, 120, 215);
  rect((x - w/2), y, w, -l);
  
  //door
  fill(255);
  rect(x- w/8, y, w/4, -l/5);
  

  //windows
  int numberChange = 1;
  int numFloors = 1;
  changeFloors = ((4*l/5)*1/floors+1);

  while (numFloors < floors){
  numberChange = 1;

  while (numberChange <= numWindows ){
    rect(x - w/2 + numberChange*w/(numWindows +1) - 12.5, y - l/5 - changeFloors, 25, 25);
    numberChange += 1;

  }
  
  changeFloors = changeFloors + ((4*l/5)*1/floors);
  
  numFloors += 1;
  
  }


  
  
}
