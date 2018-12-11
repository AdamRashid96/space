class Jumbo extends Normal{
   Jumbo(float xPos,float yPos, float size, float startingPos, int colorRed, int colorGreen, int colorBlue, int shape){
    super(xPos, yPos, size, startingPos, colorRed, colorGreen, colorBlue, shape);
   }
   

  void show() {
    fill(colorRed, colorGreen, colorBlue);
    pushMatrix();
    stroke(2);
    translate(xPos, yPos);
    switch(shape) {
    case 1:
      ellipse((size/2)* (cos(radians(startingPos))+ radians(startingPos) * sin(radians(startingPos))), (size/2) * (sin(radians(startingPos)) + radians(startingPos) * cos(radians(startingPos))), 15, 15); //Spiral
      break;
    case 2:
      ellipse(size * (4.5 * cos(radians(startingPos)) + 3 * cos(1.5 * radians(startingPos))), size *(4.5 * sin(radians(startingPos)) - 3 * sin(1.5 * radians(startingPos))), 15, 15); //Star
      break;
    case 3:
      ellipse((6*size) * (sin( 7 * PI * radians(startingPos))), (6*size) * (cos(5 * PI * radians(startingPos))), 15, 15); //Square
      break;
    case 4:
      ellipse((size/4) * ( ( -31) * cos(radians(startingPos)) - 3 * cos((-11.6 + 1) * radians(startingPos))), (size/4) * ( (-31) * sin(radians(startingPos)) - 3 * sin((-11.6 + 1) * radians(startingPos))), 15, 15);
      break;
    }
    popMatrix();
   }
}
