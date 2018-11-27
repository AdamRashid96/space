class Normal {
  double xPos;
  double yPos;
  double speed;
  double angle;
  int colorRed;
  int colorGreen;
  int colorBlue;
  
  Normal( double xPos,double yPos, double speed, double angle, int colorRed, int colorGreen, int colorBlue){
    this.xPos = xPos;
    this.yPos = yPos;
    this.speed = speed;
    this.angle = angle;
    this.colorRed = colorRed;
    this.colorGreen = colorGreen;
    this.colorBlue = colorBlue;
  }
  
  void move(){
    xPos += cos(angle) * speed;
  }
}
