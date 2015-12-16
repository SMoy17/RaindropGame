class Raindrop {
  PVector loc, vel, acc;
  float diam;

  Raindrop(float x, float y) { //class
    loc = new PVector(x, y);
    vel = new PVector(random(0, 3), random(0, 3));
    acc = new PVector(0, .01);
    diam = 20;
  }

  void display () { //display raindrop
    fill(0, 210, 255);
    ellipse(loc.x, loc.y, diam, diam);
  }

  void fall() {  //raindrop falls
    loc.y = loc.y + vel.y;
    vel.add(acc);
  }

  void reset() { //reset raindrop
    loc.y = 0;
    vel.set(0, 10);
  }

  boolean isInContactWith(Catcher c) { //reset raindrop if touches mouse
    float d = dist(loc.x, loc.y, c.x, c.y);
    boolean e;
    if (loc.dust(c.loc) <diam/2 + c.diam/2) {
      e= true;
    } else {
      e = false;
    }
    return e;
  }
}