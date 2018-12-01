//Declare your variables here
// so try declaring one Particle first, then instantiate it in setup, and use move and show in draw()
Normal[] particles;
Normal particle;
Oddball square;
void setup() {
  size(700, 600);
  background(200);
  particle = new Normal(350, 300, 5, 30, 0, 0, 200);
  square = new Oddball(350, 300, 5, 30, 0, 0, 200);
  particles = new Normal[500];

  for (int i = 0; i < particles.length; i++) {
    double checker = Math.random();
    if (checker > 0.05) {
      particles[i] = new Normal(random(250, 450), random(200, 400), random(2, 10), 30, 0, 200, 0);
    } else {
      particles[i] = new Oddball(random(250, 450), random(200, 400), random(2, 10), 30, 0, 200, 0);
    }
  }
} //end of setup


void draw() {
  background(200);
  /*
  fill(200, 30);
   rect(0, 0, width, height); 
   */
  for (int i = 0; i < particles.length; i++) {
    particles[i].show();
  }

  for (int i = 0; i < particles.length; i++) {
    particles[i].move();
  }
  square.show();
  square.move();
  particle.show();
  particle.move();
} //end of draw
