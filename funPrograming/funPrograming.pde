float circle_x = 300; // original value = 10
float circle_y = 20;

float move_x = -3;
float move_y = 3;

void setup() {
	// background(#21EA73);
	size(400,200);

	// stroke(#D60DFF);
	// strokeWeight(7);
	noStroke();
}

void draw() {
	
	// // painting the screen (while keeping background on the setup)
	// ellipse(circle_x, circle_y, 40, 40);

	// circle_x = circle_x + 5;
	// if(circle_x > width){
	// 	circle_x = 10;
	// 	circle_y = circle_y + 40;
	// }

	background(#21EA73);
	ellipse(circle_x, circle_y, 40, 40);

	// bouncing balls
	circle_x = circle_x + move_x;
	if(circle_x > width){
		circle_x = width;
		move_x = -move_x;
		fill(random(255),0,0);
	}
	if(circle_x < 0){
		circle_x = 0;
		move_x = -move_x;
		fill(random(255),0,random(255));
	}

	circle_y = circle_y + move_y;
	if(circle_y > height){
		circle_y = height;
		move_y = -move_y;
		fill(0,random(255),random(255));
	}
	if(circle_y < 0){
		circle_y = 0;
		move_y = -move_y;
		fill(0,0,random(255));
	}



}
