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
    noStroke();
    translate(xPos,yPos);
    ellipse(4* (cos(radians(angle))+ radians(angle) * sin(radians(angle))), 4 * (sin(radians(angle)) + radians(angle) * cos(radians(angle))), 10, 10);
    //ellipse(20 * (4.5 * cos(radians(angle)) + 3 * cos(1.5 * radians(angle))),20 *(4.5 * sin(radians(angle)) - 3 * sin(1.5 * radians(angle))), 10, 10); //Star
    //ellipse(50 * (sin( 7 * PI * radians(angle))),50 * (cos(5 * PI * radians(angle))), 10, 10); //Square
    //ellipse(20*cos(radians(speed* angle)),20*sin(radians(speed* angle)), 10, 10); //Circle
    popMatrix();
    
    pushMatrix();
    noStroke();
    translate(20*sin(radians(speed* angle)) + 100, 20*sin(radians(speed* angle))+ 100);
    ellipse(10*cos(radians(speed*  angle)),10* sin(radians(speed* angle)), 5, 5);
    popMatrix();
   
  }
  void move(){
    angle ++;
  }
  
  
  
}
