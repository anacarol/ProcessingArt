void setup() {
	
	size(600,600);
	background(249,250,40);

	noFill();
	// stroke(random(255),0,random(255), 40);

	// frameRate(10);
}



void draw(){

	float t = (float)frameCount; // converting the count to a float
	
	// Moving my canvas origin to the center.
	translate(width/2, height/20);

	
	// circle
	stroke(random(255),0,random(255), 40);
	// ellipse(sin(t/40)*40, cos(t/40)*40, 30,30);
	// ellipse(sin(t/40)*100, cos(t/40)*100, 30,30);
	// ellipse(sin(t/40)*200, cos(t/40)*200, 30,30);
	// ellipse(sin(t/40)*300, cos(t/40)*300, 30,30);

	triangle(sin(t/40)*40, t, cos(t/40)*40, t, 30, 30);
	triangle(sin(t/40)*100, t, cos(t/40)*100, t, 30, 30);
	triangle(sin(t/40)*200, t, cos(t/40)*200, t, 30, 30);
	triangle(sin(t/40)*300, t, cos(t/40)*300, t, 30, 30);

	rotate(t/20);

	// // ellipse
	// stroke(0,random(255),0, 40);
	// ellipse(50, 50, 30, 30);
	// ellipse(100, 100, 30, 30);
	// ellipse(150, 150, 30, 30);
	// ellipse(180, 180, 30, 30);
	// ellipse(200, 200, 30, 30);
	// ellipse(250, 250, 30, 30);
	// ellipse(280, 280, 30, 30);

}


void keyPressed(){
	if(keyCode == ENTER){
		saveFrame("mandala-####.jpg");
	}
}