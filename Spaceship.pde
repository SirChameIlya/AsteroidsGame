class Spaceship extends Floater
{
  //your code here
  public Spaceship(double x, double y) {
    corners = 14;  //the number of corners, a triangular floater has 3
    xCorners = new int[]{ -13, -15, -10, -5, -7, 7, 7, 20, 7, 7, -7, -5, -10, -15, -13};
    yCorners = new int[]{ 0, 10, 5, 5, 15, 10, 5, 0, -5, -10, -15, -5, -5, -10, 0};
    myColor = color(255);
    myCenterX = x;
    myCenterY = y; //holds center coordinates
    myXspeed = 0;
    myYspeed = 0; //holds the speed of travel in the x and y directions
    myPointDirection = 0; //holds current direction the ship is pointing in degrees
  }
  public void setXspeed(double x) {
    myXspeed = x;
  }
  public void setYspeed(double y) {
    myYspeed = y;
  }
  public void setCenterX(double x) {
    myCenterX = x;
  }
  public void setCenterY(double y) {
    myCenterY = y;
  }
  public void show ()  //Draws the floater at the current position
  {
    fill(myColor);
    stroke(myColor);

    //translate the (x,y) center of the ship to the correct position
    translate((float)myCenterX, (float)myCenterY);

    //convert degrees to radians for rotate()
    float dRadians = (float)(myPointDirection*(Math.PI/180));

    //rotate so that the polygon will be drawn in the correct direction
    rotate(dRadians);

    //draw the polygon
    beginShape();
    for (int nI = 0; nI < corners; nI++)
    {
      vertex(xCorners[nI], yCorners[nI]);
    }
    endShape(CLOSE);
    if (wPressed == true) {
      rect(-30, -5, 12, 2);
      rect(-30, 0, 12, 2);
      rect(-30, 5, 12, 2);
    }
    //"unrotate" and "untranslate" in reverse order
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
  }
}
