float x_mid = 0;
float y_mid = 0;


void setup(){
	size(600,600);
	background(16,19,70);

	// frameRate(5);
}

// kind of dropplets, kind of wheels...
// The background wipes every 100 frames
void draw(){

	// fill(11,13,67, 50);
	// rect(0, 0, width, height);
	println("frameCount: "+frameCount);
	if(frameCount%100==0){
		fill(32,38,124,60);
		rect(0, 0, width, height);

		// Pick a center:
		x_mid = random(600);
		y_mid = random(600);
		translate(x_mid, y_mid);
	}

	
	fill(73,78,157, 50);		
	translate(x_mid, y_mid);
	ellipse(0, 0, 15, 15);

	stroke(random(255));
	fill(random(7,250),random(7,250),255);	
	int i = 0;
	// while(i<10){
		float x = random(100);
		float y = random(100);
		float n = 0;
		float nMax = random(100);
		while(n<nMax){

			rotate(0.09);
			ellipse(x, y, 10, 10);

			n = n + 1;
		// }
		// i = i + 1;
	}
}