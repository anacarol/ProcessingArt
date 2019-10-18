float r = 200;

void setup(){
	// noLoop();
	// frameRate(20);
	size(500, 500);
	background(192,192,192);
}



void draw(){

	noStroke();

	// // translate(125, 125);
	// translate(width/2, height/2);
	// rotate(r);

	// fill(random(0,255),random(0,255),random(0,255));
	// ellipse(250, 250, circle_size, circle_size);


	translate(width/2, height/2);
 	rotate(r);

 	float circle_size = random(50);

 	fill(random(0,255),random(0,255),random(0,255));
 	ellipse(100 + r, 10, circle_size, circle_size);
 	r = r - 0.2;
	
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
//   println(r);
// }



