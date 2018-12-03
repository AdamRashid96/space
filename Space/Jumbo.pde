class Jumbo extends Normal{
   Jumbo(float xPos,float yPos, float speed, float angle, int colorRed, int colorGreen, int colorBlue){
    super(xPos, yPos, speed, angle, colorRed, colorGreen, colorBlue);
   }
   
   @Override
   void show(){
    fill(colorRed, colorGreen, colorBlue);
    pushMatrix();
    stroke(2);
    translate(xPos,yPos);
    ellipse(20*cos(radians(speed*  angle)),20*sin(radians(speed* angle)), 20, 20);
    popMatrix(); 
   }
}
