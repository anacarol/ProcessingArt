void setup() {
	
	size(800,800);
	background(255);

	noFill();
	// stroke(random(255),0,random(255), 30);

	frameRate(500);
}



void draw(){

	float t = (float)frameCount; // converting the count to a float
	
	translate(width/2, height/2);
	rectMode(CENTER);

	stroke(0, 30);
	rect(sin(t/400)*400, cos(t/400)*400, 100, 100);
	
	stroke(0, 0, 255, 30);
	rect(cos(t/300)*300, sin(t/300)*300, 100, 100);

	stroke(0, 255, 0, 10);
	rect(sin(t/200)*200, cos(t/200)*200, 100, 100);
	
	stroke(255, 0, 0, 30);
	rect(cos(t/100)*100, sin(t/100)*100, 100, 100);
	
}


void keyPressed(){
	if(keyCode == ENTER){
		saveFrame("mandala-####.jpg");
	}
}