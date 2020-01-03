void setup() {
	size(400,400);
	background(0);
	
}




void draw() {

	// // Party Laser
	// stroke(random(255), 0, 0);
	// line(100, 100, random(400), random(400));
	// line(300, 100, random(400), random(400));
	// fill(random(255), 0, 0, 50);
	// ellipse(random(400), random(400), 10, 10);

	// stroke(0, 0, random(255));
	// line(300, 300, random(400), random(400));
	// line(100, 300, random(400), random(400));
	// fill(0, 0, random(255), 50);
	// ellipse(random(400), random(400), 10, 10);

	// stroke(0, random(255), 0);
	// line(200, 200, random(400), random(400));



	// Varying Lines
	float y = random(400);
	float x = random(400);

	// Horizontal Lines
	stroke(random(255), 0, random(255));
	line(0, y, 400, y);

	// Vertical Lines
	stroke(0, random(255), random(255));
	line(x, 0, x, 400);



	// // Shapes
	// rectMode(CENTER);         // it makes x1,y1 from the rect function the center of the rectangle instead of the up corner
	// rect(100, 100, 100, 100);

	// ellipse(100, 100, 100, 100);

}





void mousePressed(){
  saveFrame("image.jpeg");
}


// We can either use a function called noloop inside draw, 
// or write the whole code inside setup, so there wont be any looping through frames