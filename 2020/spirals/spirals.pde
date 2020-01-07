float radius = 10;

void setup() {
	
	size(600,600);
	background(255);

	noFill();
	stroke(random(255),0,random(255), 40);


	// frameRate(10);
}



void draw(){

	// noStroke();
	// fill(255,5);
	// rect(0, 0, width, height);

	float t = (float)frameCount;

	// stroke(random(255),0,random(255), 40);

	int centX = width/2;
	int centY = height/2;

	float x, y;
	float lastx = -999;
	float lasty = -999;
	
	for(float ang = 0; ang <= t; ang+=15){
		radius+=0.03;
		float rad = radians(ang);

		x = centX + (radius*cos(rad));
		y = centY + (radius*sin(rad));
		
	
		if(lastx>-999){
			line(x,y,lastx,lasty);
		}
		lastx = x;
		lasty = y;
	}


}


// void keyPressed(){
// 	if(keyCode == ENTER){
// 		saveFrame("mandala-####.jpg");
// 	}
// }
