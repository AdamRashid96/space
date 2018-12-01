class Normal {
  protected float xPos;
  protected float yPos;
  protected float speed;
  protected float angle;
  protected int colorRed;
  protected int colorGreen;
  protected int colorBlue;
  
  Normal(float xPos,float yPos, float speed, float angle, int colorRed, int colorGreen, int colorBlue){
    this.xPos = xPos;
    this.yPos = yPos;
    this.speed = speed;
    this.angle = angle;
    this.colorRed = colorRed;
    this.colorGreen = colorGreen;
    this.colorBlue = colorBlue;
  }
  void show(){
    fill(colorRed, colorGreen, colorBlue);
    pushMatrix();
    translate(xPos,yPos);
    ellipse(20*cos(radians(speed*  angle)),20*sin(radians(speed* angle)), 10, 10);
    popMatrix();
    
    pushMatrix();
    translate(20*sin(radians(speed* angle)) + 100, 20*sin(radians(speed* angle))+ 100);
    ellipse(10*cos(radians(speed*  angle)),10*sin(radians(speed* angle)), 10, 10);
    popMatrix();
   
  }
  void move(){
    angle ++;
  }
  
  
  
}
