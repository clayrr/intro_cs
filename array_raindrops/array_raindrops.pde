
float y = 20;
int change = 0;

//float []yPos = {123, 12, 14, 245, 52, 43};
float[] yPos = new float[10];
float[] yPos2 = new float[10];
float[] xPos2 = new float[10];

void setup(){
  size(1000, 600);
    for(int x = 1; x <= 10; x += 1){
    int num = (int) random(0, 1000);
    yPos[x-1] = num; 
  }
  
}

void mousePressed(){
  
  yPos2 = append(yPos2, mouseY);
  xPos2 = append(xPos2, mouseX);
}

void draw(){
  background(100);
  for (int x = 1; x <= 10; x += 1){
    //yPos2[x-1] = yPos2[x-1]+1;
    //xPos2[x-1] = xPos2[x-1]+1;
    
    raindrop(xPos2[x-1], yPos2[x-1] + y, 50, 50);
    
    //raindrops
    ellipse(500, 600, 1000, 50 + change);
    
  if (yPos2[x-1] > 550){
    yPos2[x-1] = 0;
    change = change + 1;
  }
}
}

  
  /*
  depth(change);
  for (int x = 1; x <= 10; x += 1){
    yPos2[x-1] = yPos2[x-1]+1;
    raindrop(x*100, yPos2[x-1] + y, 50, 50);
    
    
    //raindrops
    ellipse(500, 600, 1000, 50 + change);
    
  if (yPos2[x-1] > 550){
    yPos2[x-1] = 0;
    change = change + 1;
  }
  }
  */

  




//add to array: arrayname = append(arrayname, mouseX);
//length: 

void raindrop(float xCenter, float yCenter, float w, float h){
  triangle(xCenter -w/2, yCenter, xCenter + w/2, yCenter, xCenter, yCenter -h);
  arc(xCenter, yCenter, w, h, 0, PI);
}

void depth(int change){
  textSize(100);
  text(50 + change, 400, 200);
  
}
