/*

This animation switches between different seasons (spring, summer, fall, winter) as well as time of day (day and night).  
The colors of the hills and the text indicates the season.  
The color of the sky (black or blue), the sun (during daytime), and the stars (during the night) changes.  
I attempted to use variables to count the frames, but I ended up using frameCount.  
I also ran into problem randomizing the boolean randomDay. 
My inspiration came from the 4 different seasons of the year and how the weather changes.

*/


//variables
int randomSeasons;
String seasonName;
boolean randomDay;
int starsX;
int starsY;



void setup(){
  size(400, 600);
}

void draw(){  
  
  //frameCount counts number of frames and changes each 50 frames
  if (frameCount % 50 == 0) {
    randomSeasons = (int)random(4);
    randomDay = ((int) random(2)) == 1;
  }
  
  //color of sky - night or day
  
  if (randomDay == true) {
    //sky color - day
    background(225, 240, 250);
    
    //sun
    fill(239, 245, 66);
    circle(300, 100, 50);   
  }
  else {
    //sky color - night
    background(0);
    
    //stars
    starsX = (int)random(400);
    starsY = (int)random(460);
    fill(234, 240, 65);
    circle(starsX, starsY, 8);
  }

//random seasons - color of hills

  if (randomSeasons == 0){
    //spring
    fill(190, 240, 150);
    triangle(0, 600, 400, 600, 0, 400);
    fill(140, 240, 70);
    triangle(0, 600, 400, 600, 600, 300);
    fill(100, 240, 10);
    triangle(0, 600, 400, 600, 0, 500);
    
    seasonName = "spring";
  }
  
  else if (randomSeasons == 1) {
    //summer
    fill(150, 210, 110);
    triangle(0, 600, 400, 600, 0, 400);
    fill(100, 180, 40);
    triangle(0, 600, 400, 600, 600, 300);
    fill(70, 150, 10);
    triangle(0, 600, 400, 600, 0, 500);
    
    seasonName = "summer";
  }
  
  else if (randomSeasons == 2) {
    //fall
    fill(170, 70, 20);
    triangle(0, 600, 400, 600, 0, 400);
    fill(240, 130, 30);
    triangle(0, 600, 400, 600, 600, 300);
    fill(240, 180, 10);
    triangle(0, 600, 400, 600, 0, 500);
    
    seasonName = "fall"; 
  }
  
  else {
    //winter
    fill(255, 255, 255);
    triangle(0, 600, 400, 600, 0, 400);
    fill(200, 220, 250);
    triangle(0, 600, 400, 600, 600, 300);
    fill(140, 180, 250);
    triangle(0, 600, 400, 600, 0, 500);
    
    seasonName = "winter";
  }
  
  //printing out name for each of the seasons
  textSize(50);
  text(seasonName, 100, 100);

}
