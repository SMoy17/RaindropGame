int count = 100; 
PVector mouse;   //declare a P
Raindrop [] r = new Raindrop [count]; //declare a new Raindrop called r
Catcher c;

void setup() {
  noStroke();
  c = new Catcher(50);
  size(1200, 800);
  mouse = new PVector();  //initialize mouse PVector. value is irrelevant since it will be set at the start of void draw(){}

  for (int i = 0; i < count; i++) {
    r[i] = new Raindrop(random(width), random(-height, 0));   //Initialize r. The parameters used are the initial x and y positions
  }
}

void draw() {
  mouse.set(mouseX, mouseY);             //set value of mouse as mouseX,mouseY
  background(0, 50, 100);
  for (int i = 0; i < count; i++) {
    r[i].fall();         //make the raindrop fall. It should accelerate as if pulled towards the ground by earth's gravity
    r[i].display();      //display the raindrop
    c.display();
    c.update();
    if (r[i].isInContactWith(c)) {      //check to see if the raindrop is in contact with the point represented by the PVector called mouse
      r[i].reset();                         //if it is, reset the raindrop
    }
    if (r[i].loc.y > height + r[i].diam/2) {     //check to see if the raindrop goes below the bottom of the screen
      r[i].reset();                           //if it does, reset the raindrop
    }
  }
}