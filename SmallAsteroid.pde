class SmallAsteroid extends Asteroid {
  public SmallAsteroid() {
    corners = 8;
    xCorners = new int[]{10, 8, 3, -2, -8, -8, -6, 6};
    yCorners = new int[]{0, 8, 6, 7, 7, -4, -7, -9};
    myColor = color(80);
    myCenterX = Math.random()*501+50;
    myCenterY = Math.random()*501+50; //holds center coordinates
    myXspeed = Math.random()*3;
    myYspeed = Math.random()*3; //holds the speed of travel in the x and y directions
    rotSpeed = Math.random()*3;
    myPointDirection = Math.random()*361; //holds current direction the ship is pointing in degrees
    smallAsteroid = true;
  }
  
}
