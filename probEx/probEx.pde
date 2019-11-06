float x = 0;

void setup() {
	size(400,400);
	background(255);
	stroke(255);
}

void change_line_color(){
	stroke(255);
	line(x, 200, x, 100);	

	// changing line colors...
	if(random(100) > 50){
		stroke(0);
	}
	else{stroke(255);}
	
}

void draw() {
	line(x, 200, x, 100);	

	if(random(100) > 75){
		change_line_color();
	}

	x = x + 1;
	if(x > width){
		x = 0;
	}
}