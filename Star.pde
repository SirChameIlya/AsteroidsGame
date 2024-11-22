class Star //note that this class does NOT extend Floater
{
  protected double myCenterX;
  protected double myCenterY;
  protected double radius;
  protected double myR;
  protected double myG;
  protected double myB;
  public Star(){
    myCenterX = Math.random()*800;
    myCenterY = Math.random()*800;
    radius = Math.random()*6 + 5;
    myR = Math.random()*256;
    myG = Math.random()*256;
    myB = Math.random()*256;
  }
  
  public void show(){
    strokeWeight(0);
    fill((float)myR,(float)myG,(float)myB); 
    ellipse((float)myCenterX, (float)myCenterY, (float)radius, (float)radius);
  }
}
