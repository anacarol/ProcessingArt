void setup() {
	size(400,300);
	background(0);	
	noStroke();
}

void draw() {
	fill(0);
	ellipse(0, 0, random(height), 100, 100);

	// fading effect
	fill(0,10);
	rect(0, 0, width, height);
	
	// stars...
	fill(255);
	ellipse(random(width), random(height), random(5), random(5));
}