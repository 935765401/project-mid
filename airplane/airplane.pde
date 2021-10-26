
int sceneIndex = 0;
 
PImage airplane;
PImage buildingBelow;
PImage buildingAbove;
PImage bg;
float x;
float y;
float obstacleX1;
float obstacleX2;
float obstacleX3;
float obstacleH1;
float obstacleH2;
float obstacleH3;
float obstacleW;

int counter;
 
float divY;
 
 void setup() {

 
  size(926, 695);

  airplane = loadImage ("airplane.PNG");

  buildingBelow = loadImage("building.PNG");
  buildingAbove = loadImage("building.PNG");
  bg = loadImage("sky.jpg");

  
  x = width/5;
  y = height/2;
  obstacleX1 = width +95;
  obstacleX2 = width +350;
  obstacleX3 = width +700;

  obstacleH1 = random(600) +100;
  obstacleH2 = random(600) +100;
  obstacleH3 =random(600) +100;
  obstacleW = 100;
  
 
 
}

void draw() {

  background(bg);
  textAlign(CENTER);
 
  switch(sceneIndex){
    case 0:startGame();break;
    case 1:mainScene();break;
 
  
  }

 
}

void mainScene(){
  fill(255);
 
 image(airplane, x, y, 100,100);

  image(buildingAbove, obstacleX1, 0, obstacleW, obstacleH1 -80);
  image(buildingBelow, obstacleX1, obstacleH1 + 80, obstacleW, 700);

  image(buildingAbove, obstacleX2, 0, obstacleW, obstacleH2 -80);
  image(buildingBelow, obstacleX2, obstacleH2 +80, obstacleW, 700 );

  image(buildingAbove, obstacleX3, 0, obstacleW, obstacleH3 -80);
  image(buildingBelow, obstacleX3, obstacleH3 +80, obstacleW, 700 );


    fell();
    update();
  }


void keyPressed() {
  if (key == ' ') {
    divY = -10;   
  }
}

void mouseClicked() {
  if(sceneIndex ==0){
   sceneIndex=1;
  }  
}

void fell() {
  divY+=0.4;
}
void update() {
  y+=divY;
  obstacleX1-=3;
  obstacleX2-=3;
  obstacleX3-=3;
}
 
 
 
