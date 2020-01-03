// Data (Global Variables):

color c = color(0);				// Car color.
float x = 0;					// Car x location.
float y = 100;					// Car y location.
float speed = 1;				// Car x speed.



void setup() {
  size(200,200);
  // Initialize car color.
  // Initialize car location to starting point.
  // Initialize car speed.
}



void move() {
  x = x + speed;
  if (x > width) {
    x = 0;
  }
}

void display() {
  fill(c);
  rect(x,y,30,10);
}



void draw() {
  background(255);					// Fill background.
  move();							// Increment car's location by speed.
  display();						// Display car at location with color.
}
