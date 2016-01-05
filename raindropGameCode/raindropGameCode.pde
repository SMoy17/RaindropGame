//declare
ArrayList<Raindrop> raindrops = new ArrayList<Raindrop>();  //arraylist
PImage win;  //game over win image
PImage lose;  //game over lose image
int y;  //rectangle corner
int score;  //score 
int count = 100; //count
PVector mouse;   //mouse PVector
Raindrop [] r = new Raindrop [count]; //declare a new Raindrop called r
Catcher c;  //declare Catcher called c

void setup() {
  size(1200, 800);  //canvas size
  noStroke();  //nostroke
  y=0;  //start rectangle at top
  score=0;  //start score at zero
  win = loadImage("IMG_2960.PNG");  //load image
  lose = loadImage("DSC03986.JPG");  //load image

  //initialize
  c = new Catcher(50);  //catcher
  mouse = new PVector();  //mouse
  raindrops.add(new Raindrop(random(0, 1200), random(0, 800)));  //new raindrops randomly
}

void draw() {
  background(0, 50, 100);  //bluish background
  mouse.set(mouseX, mouseY);  //mouse values     
  raindrops.add(new Raindrop(random(0, width), 0));  //add new raindrops at top at any x value

  //describes raindrop and catcher actions
  for (int i = raindrops.size()-1; i >= 0; i--) {
    Raindrop r = raindrops.get(i);  //raindrops...
    r.display();  //displayed
    r.fall();  //fall
    c.display();  //catcher displayed...
    c.update();  //and moves

    if (r.isInContactWith(c)) {      //check to see if the raindrop is in contact with the point represented by the PVector called mouse
      raindrops.remove(i); //if it is, reset the raindrop
      score=score+1;  //score increases by one
    }

    //text
    textSize(30);  //set text size
    text(score, width/2, height/2);  //placement of score
    text("collect 100 raindrops before the rectangle disappears", width/4, height/4);  //instructions
  }

  //endgame code
  rect(0, y, 30, 70); //rectangle starts at top
  y=y+2;  //slides down side
  if (y>=height) {  //if the rectangle disappears at the bottom...
    image(lose, 0, 0, width, height); //gameover screen
    score=0;  //prevents winner screen from showing
    fill(255, 0, 0);  //text color
    text("GAME OVER", width/2.5, height/2);  //says game over
  }
  if (score>=100) {  //if the score reaches 100 raindrops...
    image(win, 0, 0, width, height);  //winning image
    y=0;  //prevents loser screen from showing
  }
}