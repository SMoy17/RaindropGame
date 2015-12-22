class Raindrop {
  PVector loc, vel, acc;
  float diam;

  Raindrop(float x, float y) { //class
    loc = new PVector(x, y);
    vel = new PVector(0, random(0, 3));
    acc = new PVector(0, .01);
    diam = 20;
  }

  void display () { //display raindrop
    fill(0, 110, 255);
    ellipse(loc.x, loc.y, diam, diam);
  }

  void fall() {  //raindrop falls
  vel.add(acc);
   loc.add(vel);
  }

  void reset() { //reset raindrop
    loc.y = 0;
    vel.y = 0;
  }

  boolean isInContactWith(Catcher c) { //reset raindrop if touches mouse
    boolean e;
    if (loc.dist(c.loc) <diam/2 + c.diam/2) {
      return e= true;
    } else {
      return e = false;
    }
  }
}