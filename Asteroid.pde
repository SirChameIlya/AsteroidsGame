class Asteroid extends Floater {
  double rotSpeed;
  boolean smallAsteroid;
  public Asteroid() {
    corners = 8;
    xCorners = new int[]{20, 16, 6, -4, -16, -16, -12, 12};
    yCorners = new int[]{0, 16, 12, 14, 14, -8, -14, -18};
    myColor = color(125);
    myCenterX = Math.random()*501+50;
    myCenterY = Math.random()*501+50; //holds center coordinates
    myXspeed = Math.random()*3;
    myYspeed = Math.random()*3; //holds the speed of travel in the x and y directions
    rotSpeed = Math.random()*3;
    myPointDirection = Math.random()*361; //holds current direction the ship is pointing in degrees
    smallAsteroid = false;
  }

  public double getX() {
    return myCenterX;
  }
  public double getY() {
    return myCenterY;
  }

  public boolean getSmallAsteroid(){
    return smallAsteroid;
  }
  
  public void move() {
    //change the x and y coordinates by myXspeed and myYspeed
    myCenterX += myXspeed;
    myCenterY += myYspeed;
    myPointDirection += rotSpeed;

    //wrap around screen
    if (myCenterX > width)
    {
      myCenterX = 0;
    } else if (myCenterX<0)
    {
      myCenterX = width;
    }
    if (myCenterY >height)
    {
      myCenterY = 0;
    } else if (myCenterY < 0)
    {
      myCenterY = height;
    }
  }
}
