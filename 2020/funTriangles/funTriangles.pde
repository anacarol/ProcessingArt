void setup() {
	
	size(800,800);
	background(255);

	noFill();
	// stroke(random(255),0,random(255), 30);

	frameRate(200);
}



void draw(){

	float t = (float)frameCount; // converting the count to a float
	
	// // Moving my canvas origin to the center.
	// translate(width/4, height/10);
	// triangle(sin(t/80)*80, cos(t/80)*80, sin(t/80)*80 + t, cos(t/80)*80 + t, 30, 30);
	// triangle(cos(t/80)*80, sin(t/80)*80, cos(t/80)*80 + t, sin(t/80)*80 + t, 30, 30);

	// triangle(sin(t/80)*80, cos(t/80)*80, sin(t/80)*80 + t, cos(t/80)*80 + t, 30, 30);


	translate(width/2, height/2);

	stroke(150, 30);
	triangle(sin(t/400)*400, cos(t/400)*400,  cos(t/400)*400, sin(t/400)*400, sin(t/300)*300, cos(t/300)*300);
	
	stroke(255, 30);
	triangle(sin(t/400)*400, cos(t/400)*400,  cos(t/300)*300, sin(t/300)*300, sin(t/300)*300, cos(t/300)*300);

	stroke(0, 255, 0, 10);
	triangle(cos(t/100)*100, sin(t/100)*100, sin(t/100)*100, cos(t/100)*100, sin(t/200)*200, cos(t/200)*200);
	
	stroke(0, 80);
	triangle(cos(t/100)*100, sin(t/100)*100, cos(t/100)*100, sin(t/100)*100, sin(t/200)*200, cos(t/200)*200);
	
	stroke(255, 0, 0, 30);
	triangle(sin(t/80)*80, cos(t/80)*80,  cos(t/80)*80, sin(t/80)*80, sin(t/40)*40, cos(t/40)*40);
	
	stroke(0, 0, 255, 30);
	triangle(sin(t/80)*80, cos(t/80)*80,  cos(t/40)*40, sin(t/40)*40, sin(t/40)*40, cos(t/40)*40);
	
	stroke(0, 255, 0, 80);
	triangle(cos(t/20)*20, sin(t/20)*20, sin(t/20)*20, cos(t/20)*20, sin(t/10)*10, cos(t/10)*10);
	
	stroke(0, 80);
	triangle(cos(t/20)*20, sin(t/20)*20, cos(t/20)*20, sin(t/20)*20, sin(t/10)*10, cos(t/10)*10);

	
}


void keyPressed(){
	if(keyCode == ENTER){
		saveFrame("mandala-####.jpg");
	}
}