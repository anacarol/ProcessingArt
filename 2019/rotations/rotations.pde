float r = 500;

void setup(){
	// noLoop();
	// frameRate(20);
	size(500, 500);
	background(250,255,0);
}



void draw(){

	noStroke();
	
	// fill(130,50,10, 80);
	// ellipse(random(0,250), random(0,250), 10, 10);

	rotate(r);
	int x = int(random(500));
	for (int step = 0; step<int(random(100)); step++){

		fill(random(0,255),random(0,255),random(0,255), 50);
		// ellipse(x + step, 100, x + 2*step, random(50));
		// ellipse(0 + r + step, 250, 10 + r + 2*step, random(50));
		ellipse(100 + r + step, 250, 10 + r + 2*step, random(50));

	}
	r = r - 0.5;
	// if(r==0){
	// 	r = r + 0.01;
	// 	fill(0);
	// 	ellipse(r, r, 10, 10);
	// }
	println("(r): "+(r));
}