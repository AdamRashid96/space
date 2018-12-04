class Oddball extends Normal {
  int xDir;
  int yDir;  
  Oddball(float xPos, float yPos, float speed, float angle, int colorRed, int colorGreen, int colorBlue) {
    super(xPos, yPos, speed, angle, colorRed, colorGreen, colorBlue);
    if(random(0,1) >= 0.5){
      xDir = 1;
    } else {
      xDir = -1;
    }
    
    if(random(0,1) >= 0.5){
      yDir = 1;
    } else {
      yDir = -1;
    }
  }

  void show() {
    noStroke();
    fill(colorRed/2 +75, colorGreen/2 + 20, colorBlue/2 + 100);
    rect(xPos, yPos, 20, 20);
  }
  void move() {
    if (xPos >= 670 && xDir == 1) {
      xDir = -1;
    } else if (xPos <= 20 && xDir == -1) {
      xDir = 1;
    }

    if (yPos >= 570 && yDir == 1) {
      yDir = -1;
    } else if (yPos <= 20 && yDir == -1) {
      yDir = 1;
    }

    xPos += xDir;
    yPos += yDir;
  }
}
