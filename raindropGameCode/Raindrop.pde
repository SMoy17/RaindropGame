class Raindrop {
  PVector loc, vel, acc;
  float diam;

  Raindrop(float x, float y) {
    loc = new PVector(x, y);
    vel = new PVector(random(-5, 5), random(-5, 5));
    acc = new PVector(0, .1);
    diam = 20;
  }

  void display () {
    fill(0, 5, 100);
    ellipse(loc.x, loc.y, diam, diam);
  }

  void fall() {
    loc.y = loc.y + vel.y;
    vel.add(acc);
  }

  void reset() {
    loc.y = 0;
    vel.set(0, 10);
  }

  boolean isInContactWith(PVector c) {
    float d = dist(loc.x, loc.y, c.x, c.y);
    boolean e;
    if (d <diam/2) {
      e= true;
    } else {
      e = false;
    }
    return e;
  }
}