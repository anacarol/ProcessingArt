float r = 100;

void setup(){
	// noLoop();
	// frameRate(20);
	size(500, 500);
	background(0,0,250);
}



void draw(){

	
	noStroke();
	fill(130,50,10);
	ellipse(250, 500, 450, 450);

	stroke(0);
	fill(0);
	ellipse(250, 500, 30, 800);
	fill(247,133,25);
	triangle(250, 250, 250, 200, 200, 250);

	translate(250, 500);
	rotate(r);

	for (int step = 0; step<int(random(100)); step++){

		stroke(0,random(0,255),random(0,255));
		fill(0,random(0,255),random(0,255), 50);
		ellipse(250, 250 + r, random(50), 300 + 2*step);

	}
	
	// fill(0,random(0,255),random(0,255), 50);
	// ellipse(250, 250 + r, 100, 300);

	// // basketball
	// fill(130,50,10);
	// ellipse(250, 250, random(250), 250);

	r = r - 0.2;
	if(r<=-450){r = 200;}
	println(r);
	
}


// float r = 0;

// void setup() {
//   size(400,400);
//   background(10);
//   smooth();
//   noStroke();
// }
// void draw() {
//   translate(width/2, height/2);
//   fill(255);
//   rotate(r);
//   float circle_size = random(5, 15);
//   ellipse(100 + r, 10, circle_size, circle_size);
//   r = r + 0.2;
  // println(r);
// }



