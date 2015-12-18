ArrayList<Raindrop> raindrops = new ArrayList<Raindrop>();

int count = 100; 
PVector mouse;   //declare a P
Raindrop [] r = new Raindrop [count]; //declare a new Raindrop called r
Catcher c;

void setup() {
  noStroke();
  c = new Catcher(50);
  size(1200, 800);
  mouse = new PVector();  //initialize mouse PVector. value is irrelevant since it will be set at the start of void draw(){}
  raindrops.add(new Raindrop(random(0, 1200), random(0, 800)));
}

void draw() {
  mouse.set(mouseX, mouseY);             //set value of mouse as mouseX,mouseY
  background(0, 50, 100);
  raindrops.add(new Raindrop(random(0, width), random(0, height)));
  for (int i = raindrops.size()-1; i >= 0; i--) {
    Raindrop r = raindrops.get(i);
    r.display();
    r.fall();
    c.display();
    c.update();
    if (r.isInContactWith(c)) {      //check to see if the raindrop is in contact with the point represented by the PVector called mouse
      raindrops.remove(i);                       //if it is, reset the raindrop
    }
  }
}