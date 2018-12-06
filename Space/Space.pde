//Declare your variables here
// so try declaring one Particle first, then instantiate it in setup, and use move and show in draw()
Normal[] particles;
Normal particle;
Oddball square;

  float xPos = random(250, 450);
  float yPos = random(200, 400);
  float size = 20;
  float startingPos = random(2, 50);
  int colorRed = 0;
  int colorGreen = 200;
  int colorBlue = 0;
  int shape = (int)random(1,4);
  
void setup() {
  size(700, 600);
  background(200);
  noStroke();
  //particle = new Normal(xPos, yPos, size, startingPos, colorRed, colorGreen, colorBlue,shape);
  //square = new Oddball(350, 300, 5, 30, 0, 0, 200, 1);
  particles = new Normal[600];
  for (int i = 0; i < particles.length - 1; i++) {
    startingPos = random(2, 500);
    double checker = Math.random();
    if (checker > 0.05) {
      particles[i] = new Normal(xPos, yPos, size, startingPos, colorRed, colorGreen, colorBlue,shape);
    } else {
      particles[i] = new Oddball(xPos, yPos, size, startingPos, colorRed, colorGreen, colorBlue,shape);
    }
  }
  
  particles[particles.length - 1] = new Jumbo(random(250, 450), random(200, 400), random(2, 10), 30, 0, 255, 0,shape);
  
} //end of setup


void draw() {
  fill(200, 30);
  rect(0, 0, width, height); 
  
  for (int i = 0; i < particles.length; i++) {
    particles[i].show();
  }

  for (int i = 0; i < particles.length; i++) {
    particles[i].move();
  }
  
  //square.show();
  //square.move();
  //particle.show();
  //particle.move();
} //end of draw

void mouseReleased(){
  int z = (int)random(1,4);
  background(200);
  for (int i = 0; i < particles.length; i++) {
    particles[i].setShape(z);
  }

}
