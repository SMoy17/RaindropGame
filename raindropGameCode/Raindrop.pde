class Raindrop {
  PVector loc, vel, acc;
  float diam;

  Randrop(float x, float y) {
    loc = new PVector(x, y);
    vel = new PVector(random(-5, 5), random(-5, 5));
    acc = new PVector(0, .1);
    diam = 20;
  }