float x = 0;

void setup(){
	size(600,600);
	background(255);

	// frameRate(10);
}

// size(300, 300);
// background(#357BC4);

void draw(){
	stroke(#D66727);
	// line(0, 50, width, 50);
	// line(0, 150, width, 150);
	line(0, 250, width, 250);
	stroke(random(255),random(255),random(255));
	strokeWeight(3);

	// float x = 0;
	while(x < random(width)) {
	  // point(x, 50 + random(-10, 10));   // random(-10,10) returns number between -10 and 10
	  point(x, 150 + 20 * noise(x/10)); // noise() returns number between 0 and 1
	  point(x, 250 + 20 * sin(x/10));   // sin() returns number between -1 and 1
	  x = x + 1;
	}
}


