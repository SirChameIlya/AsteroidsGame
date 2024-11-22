//your variable declarations here
Spaceship ilyaSpaceship;
Star[] stars = new Star[100];

boolean wPressed = false;
boolean rPressed = false;
boolean lPressed = false;

public void setup() 
{
  size(800, 800);
  background(0);
  ilyaSpaceship = new Spaceship(width/2, height/2);
  for (int i = 0; i < stars.length; i++){
    stars[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  for (int i = 0; i < stars.length; i++){
    stars[i].show();
  }
  if (wPressed == true){
    ilyaSpaceship.accelerate(0.5);
  }
  if (rPressed == true){
    ilyaSpaceship.turn(10);
  }
  if (lPressed == true){
    ilyaSpaceship.turn(-10);
  }
  ilyaSpaceship.show();
  ilyaSpaceship.move();
}

public void keyPressed() {
  if (key == 'w') {
    wPressed = true;
  }
  if (key == 'r') {
    rPressed = true;
  }
  if (key == 'l') {
    lPressed = true;
  }
  if (key == 'h') {
    ilyaSpaceship.setCenterX(Math.random()*800);
    ilyaSpaceship.setCenterY(Math.random()*800);
    ilyaSpaceship.turn(Math.random()*361);
    ilyaSpaceship.setXspeed(0);
    ilyaSpaceship.setYspeed(0);
  }
}

public void keyReleased(){
  if (key == 'w'){
    wPressed = false;
  }
  if (key == 'r') {
    rPressed = false;
  }
  if (key == 'l') {
    lPressed = false;
  }
  
}
