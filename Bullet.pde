class Bullet extends Floater {
  Bullet(Spaceship ship) {
    myColor = color(255);
    myCenterX = ship.getX();
    myCenterY = ship.getY();
    myXspeed = ship.getXspeed();
    myYspeed = ship.getYspeed();
    myPointDirection = ship.getPointDirection();
    accelerate(6);
  }

  public void show() {
    fill(myColor);
    //ellipse((float)myCenterX, (float)myCenterY, 10, 10);
    image(img,(float)myCenterX,(float)myCenterY, 25,25);
  }

  public void move ()   //move the floater in the current direction of travel
  {
    //change the x and y coordinates by myXspeed and myYspeed
    myCenterX += myXspeed;
    myCenterY += myYspeed;
  }
  
  public double getX() {
    return myCenterX;
  }
  public double getY() {
    return myCenterY;
  }
}
