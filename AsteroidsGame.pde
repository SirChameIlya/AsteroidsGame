//your variable declarations here
Spaceship ilyaSpaceship;
Star[] stars = new Star[200];
ArrayList <Asteroid> asteroids = new ArrayList <Asteroid>();
ArrayList <Bullet> bullets = new ArrayList <Bullet>();
PImage img;

boolean wPressed = false;
boolean aPressed = false;
boolean dPressed = false;
boolean sPressed = false;

int sum = 0;

public void setup()
{
  size(600, 600);
  background(0);
  ilyaSpaceship = new Spaceship(width/2, height/2);
  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }
  for (int i = 0; i < 5; i++) {
    asteroids.add(new Asteroid());
  }
  for (int i = 5; i < 10; i++) {
    asteroids.add(new SmallAsteroid());
  }
  img = loadImage("gavinB.png");
}
public void draw()
{
  background(0);
  fill(255);
  textSize(25);
  textAlign(CENTER);
  text("Asteroids destroyed: " + sum, width/2, 30);
  for (int i = 0; i < stars.length; i++) {
    stars[i].show();
  }
  if (wPressed == true) {
    ilyaSpaceship.accelerate(0.1);
  }
  if (sPressed == true) {
    ilyaSpaceship.accelerate(-0.1);
  }
  if (dPressed == true) {
    ilyaSpaceship.turn(5);
  }
  if (aPressed == true) {
    ilyaSpaceship.turn(-5);
  }
  ilyaSpaceship.move();
  ilyaSpaceship.show();

  for (int i = 0; i < asteroids.size(); i++) {
    asteroids.get(i).move();
    asteroids.get(i).show();
    if (dist((float)asteroids.get(i).getX(), (float)asteroids.get(i).getY(), (float)ilyaSpaceship.getX(), (float)ilyaSpaceship.getY()) < 20) {
      if (asteroids.get(i).getSmallAsteroid() ==  true) {
        asteroids.remove(i);
        asteroids.add(new SmallAsteroid());
        i--;
      } else {
        asteroids.remove(i);
        asteroids.add(new Asteroid());
        i--;
      }
      sum++;
    }
  }
  for (int i = 0; i < bullets.size(); i++) {
    bullets.get(i).show();
    bullets.get(i).move();
    for (int j = 0; j < asteroids.size(); j++) {
      if (dist((float)asteroids.get(j).getX(), (float)asteroids.get(j).getY(), (float)bullets.get(i).getX(), (float)bullets.get(i).getY()) < 15 ) {
        bullets.remove(i);
        if (asteroids.get(j).getSmallAsteroid() ==  true) {
          asteroids.remove(j);
          asteroids.add(new SmallAsteroid());
          j--;
        } else {
          asteroids.remove(j);
          asteroids.add(new Asteroid());
          j--;
        }
        i--;
        sum++;
        break;
      }
    }
  }
}

public void keyPressed() {
  if (key == 'w' || key == 'W') {
    wPressed = true;
  }
  if (key == 's' || key == 'S') {
    sPressed = true;
  }
  if (key == 'd' || key == 'D') {
    dPressed = true;
  }
  if (key == 'a' || key == 'A') {
    aPressed = true;
  }
  if (key == 'h' || key == 'H') {
    ilyaSpaceship.setCenterX(Math.random()*600);
    ilyaSpaceship.setCenterY(Math.random()*600);
    ilyaSpaceship.turn(Math.random()*361);
    ilyaSpaceship.setXspeed(0);
    ilyaSpaceship.setYspeed(0);
  }
  if (key == ' ') {
    bullets.add(new Bullet(ilyaSpaceship));
  }
}

public void keyReleased() {
  if (key == 'w' || key == 'W') {
    wPressed = false;
  }
  if (key == 's' || key == 'S') {
    sPressed = false;
  }
  if (key == 'd' || key == 'D') {
    dPressed = false;
  }
  if (key == 'a' || key == 'A') {
    aPressed = false;
  }
}
