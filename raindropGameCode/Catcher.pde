class Catcher {
  PVector loc;
  int diam;

  Catcher(int tDiam) {
    loc = new PVector(mouseX, mouseY);
    diam=tDiam;
    tDiam = 40;
  }

  void display () { //display bucket
    fill(0);
    ellipse(loc.x, loc.y, diam, diam);
  }

  void update () {
    loc.set(mouseX, mouseY);
  }
}