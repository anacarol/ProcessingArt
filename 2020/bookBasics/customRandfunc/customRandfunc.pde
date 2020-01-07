float customRandom(){
	float retValue = 1 - pow(random(1),5);
	return retValue;
}

void setup() {
	size(500, 100);
	background(255);

	strokeWeight(5);
	smooth();


	// // Same code I have inside the draw function, but here it happens only once.
	stroke(0,30);
	line(20, 50, 480, 50);

	float xstep = 1;

	float lastx = -999;
	float lasty = -999;

	float angle = 0;

	float y = 50;
	stroke(30, 50, 70);
	for(int x=20; x<=480; x+=xstep){
		float rad = radians(angle);

		y = 20 + (customRandom()*60);

		if(lastx>-999){
			line(x, y, lastx, lasty);
		}
		lastx = x;
		lasty = y;
		angle++;
	}
}