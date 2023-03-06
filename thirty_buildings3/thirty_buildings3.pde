float x;
float y;
float w;
float l;
int floors;
float numFloors;
int numWindows;
int numBuildings;
float changeFloors;
int changeBuildings;
float randomX;
float randomW;
float randomL;
int randomWindows;
int randomFloors;
boolean lights;

void setup(){
  size(2000, 600);
 
  numBuildings = 30;
  changeBuildings = 0;
  
  while(changeBuildings < numBuildings){
    
    randomFloors = int(random(2,5));
    randomX = random(0, 2000);
    randomW = random(100, 200);
    randomL = random(100, 600);
    randomWindows = int(random(1, 5));
    building(randomX, 600, randomW, randomL, randomWindows, randomFloors, false);
    changeBuildings += 1;
  }
}

void building(float x, float y, float w, float l, int numWindows, 
int floors, boolean lights){
  //note: door is ground floor, counts as 1 floor
  fill(120, 120, 215);
  rect((x - w/2), y, w, -l);
  
  //door
  fill(255);
  rect(x- w/8, y, w/4, -l/5);
  
  //windows
  int numFloors = 1;
  changeFloors = ((4*l/5)*1/floors+1);
  
  //lights
  if (lights){
    fill(255, 255, 120);
  }
  else{
    fill(0);
  }
  
  while (numFloors < floors){ //windows on floors
  
    //makes windows
  for(int numberChange = 1; numberChange <= numWindows; numberChange += 1){
    rect(x - w/2 + numberChange*w/(numWindows +1) - 12.5, 
    y - l/5 - changeFloors, 10, 15);
  }
  
  changeFloors = changeFloors + ((4*l/5)*1/floors);
  numFloors += 1;
  }
  
}
