class catcher {
  PVector loc;
  int diam;


Catcher(int tDiam) {
  loc = new PVector(mouseX, mouseY);
  tDiam = 40;
}
  
  void display () { //display bucket
    fill(0);
    ellipse(loc.x, loc.y, tDiam, tDiam);
  }
  
  void update () {
    loc.set(mouseX,mouseY);
  }
  