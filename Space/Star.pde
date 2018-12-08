class Star{
  private float xPos;
  private float yPos; 
  
  Star(float xPos, float yPos){
     this.xPos = xPos; 
     this.yPos = yPos; 
  }
  
  void show(){
    fill(255);
    ellipse(xPos, yPos, 3,3);
  }
  
  void twinkle(){
    fill(255, 255, 0);
    ellipse(xPos, yPos, 3,3);
  }
}
