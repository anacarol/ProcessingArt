int diam = 10;
float centX, centY;

void setup() {
	size(500, 300);
	background(180);

	centX = width/2;
	centY = height/2;

	smooth();

	stroke(0);
	strokeWeight(5);

	fill(255, 50);

	frameRate(24);
}


void draw() {
	
	if(diam <= 400){
		background(180); // if this is not here I only leave traces of the circle moving
		// with it, you only see the circle growing
		// without it, you see the traces of the gowing circle

		strokeWeight(5);
		fill(255, 50);
		ellipse(centX, centY, diam, diam);

		strokeWeight(0);
		noFill();
		int tempdiam = diam;
		while(tempdiam > 10){
			ellipse(centX, centY, tempdiam, tempdiam);
			tempdiam -=10;
			// println("tempdiam: "+tempdiam);
		}

		diam +=10;
		// println("diam: "+diam);
	}	

}