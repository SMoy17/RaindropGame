class Raindrop {
  //declare
  PVector loc, vel, acc; //location, velocity, acceleration
  float diam;  //diameter

  //initialize
  Raindrop(float x, float y) { //class
    loc = new PVector(x, y);  //location PVector
    vel = new PVector(0, random(0, 3));  //velocity PVector
    acc = new PVector(0, .08);  //acceleration PVector
    diam = 20;  //diameter
  }

  //display raindrop
  void display () {
    fill(0, 205, 255);  //raindrop color
    ellipse(loc.x, loc.y, diam, diam);  //draw raindrop
  }

  //raindrop falls
  void fall() {  
    loc.add(vel);  //add velocity to location
    vel.add(acc); //add acceleration to velocity
  }

  //reset raindrop
  void reset() { 
    loc.y = 0;  //reset at top
    vel.y = 0;  //reset velocity zero
  }

  //reset raindrop if touches catcher
  boolean isInContactWith(Catcher c) { 
    boolean e;
    if (loc.dist(c.loc) <diam/2 + c.diam/2) {  //if raindrop touches catcher...
      return e= true;  //reset raindrop and add one to score
    } else {  //if not...
      return e = false;  // raindrop continues to fall
    }
  }
}