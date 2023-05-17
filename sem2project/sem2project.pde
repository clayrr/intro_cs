
int numDrops = 4;
float spacing;
int score = 0;
int y = 0;

PImage sushi;
PImage plate;


float[] randomXarray = new float[numDrops];

  float[] randomYarray = new float[numDrops];

float[] speeds = new float[numDrops];

void setup() {
  size(1000, 600);

  //images
  sushi = loadImage("sushi.png");
  plate = loadImage("plate.png");


  for (int i = 0; i < numDrops; i++) {
    speeds[i] = random(5, 15);
    randomXarray[i] = random(-spacing * .5, -spacing * .2);
  }
  spacing = width / numDrops;
}

void draw() {
  background(100);
  for (int x = 0; x < numDrops; x= x+1) {


    randomYarray[x] = randomYarray[x] + 10;
    image(sushi, x * width/numDrops + randomXarray[x], randomYarray[x]);


    //raindrop(x * width / numDrops, randomYarrray[x], 10, 20);

    if (randomYarray[x] > 550) {
      randomYarray[x] = 0;
      randomXarray[x] = random(-spacing * .5, -spacing * .2);
      score = score + 1;
    }
  }


  fill(75, 60, 200);

  //score
  textSize(40);
  text(score, 500, 200);
}


/* void sushi(float xCenter, float yCenter) {
 triangle(xCenter - w/2, yCenter, xCenter + w/2,
 yCenter, xCenter, yCenter - h);
 
 arc(xCenter, yCenter, w, h, 0, PI);
 }
 
 
 
 
 
 */
