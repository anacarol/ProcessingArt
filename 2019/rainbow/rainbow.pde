void setup() {
	size(300,300);
	background(#40D7FF);	
	colorMode(HSB);
}

void draw() {
	noFill();
	// strokeWeight(6);

	stroke(random(255),100,255); // Hue, Saturation and Brightness
	strokeWeight(random(3,10));
	float rainbow_size = random(200,270);
	ellipse(150, 350, rainbow_size, rainbow_size);

	// stroke(255,182,64);
	// ellipse(150, 300, 286, 286);

	// stroke(255,249,64);
	// ellipse(150, 300, 282, 282);

	// stroke(0,255,0);
	// ellipse(150, 300, 278, 278);

	// stroke(0,0,255);
	// ellipse(150, 300, 274, 274);

	// stroke(153,64,255);
	// ellipse(150, 300, 270, 270);
}