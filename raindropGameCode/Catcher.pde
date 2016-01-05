class Catcher {
  //declare
  PVector loc;  //location
  int diam;  //diameter

  //initialize
  Catcher(int tDiam) {  //class
    loc = new PVector(mouseX, mouseY);  //catcher moves with mouse
    diam=tDiam;  //set catcher diameter
    tDiam = 40;  //"
  }

  //display catcher
  void display () { 
    fill(0);  //catcher color
    ellipse(loc.x, loc.y, diam, diam);  //draw catcher
  }

  //move catcher
  void update () {
    loc.set(mouseX, mouseY);  //move with mouse
  }
}