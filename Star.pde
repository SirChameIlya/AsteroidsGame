class Star //note that this class does NOT extend Floater
{
  protected double myCenterX;
  protected double myCenterY;
  protected double radius;
  protected double myR;
  protected double myG;
  protected double myB;
  public Star() {
    myCenterX = Math.random()*600;
    myCenterY = Math.random()*600;
    radius = Math.random()*6 + 5;
    myR = Math.random()*256;
    myG = Math.random()*256;
    myB = Math.random()*256;
  }

  public void show() {
    strokeWeight(0);
    fill((float)myR, (float)myG, (float)myB);
    stroke((float)myR, (float)myG, (float)myB);
    //credit to William Chung for code to draw the star
    beginShape();
    vertex((float)myCenterX-1, (float) myCenterY+1);
    vertex((float)myCenterX, (float)myCenterY+6);
    vertex((float)myCenterX+1, (float)myCenterY+1);
    vertex((float)myCenterX+6, (float)myCenterY);
    vertex((float)myCenterX+1, (float)myCenterY-1);
    vertex((float)myCenterX, (float) myCenterY-6);
    vertex((float)myCenterX-1, (float)myCenterY-1);
    vertex((float)myCenterX-6, (float)myCenterY);
    vertex((float)myCenterX-1, (float)myCenterY+1);
    vertex((float)myCenterX-1, (float)myCenterY+1 );
    endShape(CLOSE);
  }
}
