class Normal {
  protected float xPos;
  protected float yPos;
  protected float size;
  protected float startingPos;
  protected int colorRed;
  protected int colorGreen;
  protected int colorBlue;
  protected int shape;

  Normal(float xPos, float yPos, float size, float startingPos, int colorRed, int colorGreen, int colorBlue, int shape) {
    this.xPos = xPos;
    this.yPos = yPos;
    this.size = size;
    this.startingPos = startingPos;
    this.colorRed = colorRed;
    this.colorGreen = colorGreen;
    this.colorBlue = colorBlue;
    this.shape = shape;
  }
  void show() {
    fill(colorRed, colorGreen, colorBlue);
    pushMatrix();
    noStroke();
    translate(xPos, yPos);
    switch(shape) {
    case 1:
      ellipse((size/2)* (cos(radians(startingPos))+ radians(startingPos) * sin(radians(startingPos))), (size/2) * (sin(radians(startingPos)) + radians(startingPos) * cos(radians(startingPos))), 5, 5); //Spiral
      break;
    case 2:
      ellipse(size * (4.5 * cos(radians(startingPos)) + 3 * cos(1.5 * radians(startingPos))), size *(4.5 * sin(radians(startingPos)) - 3 * sin(1.5 * radians(startingPos))), 5, 5); //Star
      break;
    case 3:
      ellipse((2*size) * (sin( 7 * PI * radians(startingPos))), (2*size) * (cos(5 * PI * radians(startingPos))), 5, 5); //Square
      break;
    }
    popMatrix();
  }
  
  void setShape(int x){
    shape = x;
  }
  
  void move() {
    startingPos ++;
  }
}
