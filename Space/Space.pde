//Declare your variables here
// so try declaring one Particle first, then instantiate it in setup, and use move and show in draw()
  Normal[] particles;
  Normal particle;
void setup() {
  size(700, 600);
  background(200);
  particle = new Normal(350, 300, 5, 30, 0, 0 , 200);
  particles = new Normal[50];
  
  for(int i = 0; i < particles.length; i++){
    particles[i] = new Normal(random(300, 400), random(250, 350),random(2, 10), 30, 0, 200 , 0);
  }
} //end of setup
 

void draw() {
	background(200);
  for(int i = 0; i < particles.length; i++){
    particles[i].show();
  }
  
  for(int i = 0; i < particles.length; i++){
    particles[i].move();
  }
  
  particle.show();
  particle.move();
} //end of draw
