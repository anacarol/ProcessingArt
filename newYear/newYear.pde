float x_mid = 0;
float y_mid = 0;


void setup(){
	size(600,600);
	background(255);

	frameRate(10);
}

// kind of dropplets, kind of wheels...
// The background wipes every 100 frames
void draw(){

	textSize(50);
	text("Happy New Year!!!", 100, 300);



	println("frameCount: "+frameCount);
	if(frameCount%10==0){
		fill(255,60);
		rect(0, 0, width, height);

		// Pick a center:
		x_mid = random(600);
		y_mid = random(600);
		translate(x_mid, y_mid);
	}

	

	// fill(73,78,157, 50);		
	// stroke(0,50);
	stroke(random(7,250),random(7,250),255);
	translate(x_mid, y_mid);
	// translate(width/2,height/2);
	line(0, 0, random(100,110), random(100,110));
	// ellipse(0, 0, 15, 15);

	fill(random(7,250),random(7,250),255);	
	// int i = 0;
	// // while(i<10){
	// 	float x = random(100);
	// 	float y = random(100);
		float n = 0;
		float nMax = random(100,200);
		while(n<nMax){

			rotate(0.07);
			// ellipse(x, y, 10, 10);
			line(0, 0, random(100,110), random(100,110));
			// stroke(random(7,250),random(7,250),255);	
			// line(x, y, random(100), random(100));

			n = n + 1;
		}
		// i = i + 1;
	// }
}
