void setup() {
  size(700, 625);
  frameRate(2);
}

void draw() {
  background(random(197), random(206), random(209));
  
  fill(0);
  ellipse(150,150, 300, 300);
  ellipse(550,150, 300, 300);
  
  fill(255);
  ellipse(100,200, 30, 30);
  ellipse(500,100, 30, 30);
  
  
  fill(0);
  arc(350, 400, 400, 400, 0, PI, CHORD);
  
  fill(255,0,0);
  arc(350, 560, 80, 80, 0, 2*PI, OPEN);
}