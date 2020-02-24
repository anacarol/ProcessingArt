void setup() {

	size(700, 700);
	background(255, 255, 255);
	noFill();
	// stroke(0, 40);
	// stroke(random(255),random(255),0, 40);
	
}

void draw() {

	//make t to hold the current frame number as a float
	float t = (float)frameCount;

	//move the coordinate system to left middle
	translate(width/2, height/2);



	// Playing with shapes:

	// //circles left to right on a cos() wave
	// ellipse(sin(t/50)*50, cos(t/50)*50, 50, 50);
	// // ellipse(sin(t/50)*50, cos(t/50)*150, 50, 50);


	// //spiral
	// // ellipse(sin(t/10)*t, cos(t/10)*t, 10, 10);
	// // ellipse(sin(t/10)*t/10, cos(t/10)*t/10, 10, 10);
	// // ellipse(sin(t/50)*(t/10), cos(t/50)*(t/10), 50, 50);

	// ellipse(sin(t/50)*(t/10), cos(t/50)*(t/10), t, t);
	
	// // ellipse(sin(t/50)*(t/10), cos(t/50)*(t/10), sin(t)*20, cos(t));
	// // ellipse(sin(t/50)*(t/10), cos(t/50)*(t/10), sin(t)*40, 40);


	// //zigzag like
	// // ellipse(sin(t/10)*200, cos(t/50)*200, 100, 100);
	// ellipse(sin(t/100)*200, cos(t/500)*200, 100, 100);


	// Hey, you look at that:
	rotate(t);
	stroke(random(255),random(255),0, 40);
	// strokeWeight(random(5));
	ellipse(0, 0, sin(t/300)*500, cos(t/130)*500);

}