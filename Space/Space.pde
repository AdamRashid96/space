//Declare your variables here
// so try declaring one Particle first, then instantiate it in setup, and use move and show in draw()
Normal[] particles;
Star[] stars;
float xPos = random(250, 450);
float yPos = random(200, 400);
float radius = random(10, 30);
float startingPos = random(2, 50);
int colorRed = 0;
int colorGreen = 200;
int colorBlue = 0;
int shape = (int)random(1, 5);


void setup() {
  size(700, 600);
  background(0);
  stars = new Star[200];
  particles = new Normal[600];

  for (int i = 0; i < stars.length - 1; i++) {
    int x_Pos = (int)random(0, 700);
    int y_Pos = (int)random(0, 600);
    stars[i] = new Star(x_Pos, y_Pos);
  }

  for (int i = 0; i < particles.length - 1; i++) {
    startingPos = random(2, 500);
    double checker = Math.random();
    if (checker < 0.5) {
      particles[i] = new Normal(xPos, yPos, radius, startingPos, colorRed, colorGreen, colorBlue, shape);
    } else {
      particles[i] = new Oddball(xPos, yPos, radius, startingPos, colorRed, colorGreen, colorBlue, shape);
    }
  }

  particles[particles.length - 1] = new Jumbo(xPos, yPos, radius, startingPos, colorRed, colorGreen, colorBlue, shape);
} //end of setup


void draw() {
  fill(0, 30);
  rect(0, 0, width, height); 

  for (int i = 0; i < stars.length- 1; i++) {
    stars[i].show();
  }

  for (int i = 0; i < stars.length-1; i++) {
    stars[i].twinkle();
  }

  for (int i = 0; i < particles.length; i++) {
    particles[i].show();
  }

  for (int i = 0; i < particles.length; i++) {
    particles[i].move();
  }
} //end of draw

void mouseReleased() {
  int z = (int)random(1, 5);
  xPos = random(150, 500);
  yPos = random(100, 500);
  radius = random(10, 30);
  colorRed = (int)random(0, 255);
  colorGreen = (int)random(0, 255);
  colorBlue = (int)random(0, 255);
  background(0);
  for (int i = 0; i < particles.length - 1; i++) {
    if (z == 3) {
      startingPos = random(2, 50);
    } else {
      startingPos = random(2, 500);
    }
    double checker = Math.random();
    if (checker > 0.05) {
      particles[i] = new Normal(xPos, yPos, radius, startingPos, colorRed, colorGreen, colorBlue, z);
    } else {
      particles[i] = new Oddball(xPos, yPos, radius, startingPos, colorRed, colorGreen, colorBlue, z);
    }
  }

  particles[particles.length - 1] = new Jumbo(xPos, yPos, radius, startingPos, colorRed, colorGreen, colorBlue, z);
}
