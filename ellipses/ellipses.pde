// int x = int(random(500));
// int width_x = int(random(100));

// int y = int(random(500));

// int step = int(random(100));

void setup(){
	// noLoop();
	frameRate(20);
	size(500, 500);
	background(255);
}

void draw(){

	// background(255);

	int x = int(random(500));
	for (int step = 0; step<int(random(100)); step++){

		fill(random(0,255),random(0,255),random(0,255), 50);
		ellipse(x + step, 100, x + 2*step, random(50));

		for (int rot = 0; rot<360; rot = rot + 30){

			translate(width/2, height/2);
			rotate(radians(rot));
			ellipse(x + step, 100, x + 2*step, random(50));

		}

	// 	for(int y = -x; y<int(random(500)); y++){
	// 		fill(random(0,255),random(0,255),random(0,255), 50);
	// 		ellipse(x + step, y, x + 2*step, y/2);			
	// 	}

	}

	// background(255);

	// // noStroke();
	// fill(random(0,255),random(0,255),random(0,255), 50);

	// // noFill();

	// // int x = int(random(500));
	// // int width_x = int(random(100));

	// // int y = int(random(500));

	// int step = int(random(100));

	// // ellipse(x + step, y, width_x + 2*step, y/2);

	// ellipse(50 + step, 50, 50 + 2*step, random(50));
	// ellipse(100 + step, 100, 100 + 2*step, random(50));
	// ellipse(150 + step, 150, 150 + 2*step, random(75));
	// ellipse(200 + step, 200, 200 + 2*step, random(100));
	// ellipse(250 + step, 250, 250 + 2*step, random(125));
	// ellipse(300 + step, 300, 300 + 2*step, random(150));
	// ellipse(350 + step, 350, 350 + 2*step, random(175));
	// ellipse(400 + step, 400, 400 + 2*step, random(200));
	// ellipse(450 + step, 450, 450 + 2*step, random(225));


	// ellipse(50, 50 + step, random(50), 50 + 2*step);
	// ellipse(100, 100 + step, random(100), 100 + 2*step);
	// ellipse(150, 150 + step, random(150), 150 + 2*step);
	// ellipse(200, 200 + step, random(200), 200 + 2*step);
	// ellipse(250, 250 + step, random(250), 250 + 2*step);
	// ellipse(300, 300 + step, random(300), 300 + 2*step);
	// ellipse(350, 350 + step, random(350), 350 + 2*step);
	// ellipse(400, 400 + step, random(400), 400 + 2*step);
	// ellipse(450, 450 + step, random(450), 450 + 2*step);
	
	// ellipse(100 + step, random(500), 100 + 2*step, random(250));

	// // ellipse(100, 100, 100, 50);
	// // ellipse(120, 100, 140, 50);
	// // ellipse(150, 100, 200, 50);
	
	// // ellipse(200, 100, 300, 50);

	// // ellipse(150, 100, 200, 50);
	// // ellipse(100, 100, 100, 50);
}


// x & x_width
// x+50 & x_width + 100
// try: x + 20 & x_width + 40