float xLoc;
float yLoc;

float xLoc_star;
float yLoc_star;

void setup() {
	size(700,700);
	background(39,52,162);
	// stroke(255);

	xLoc_star = random(700);
	yLoc_star = random(0,100);

	xLoc = random(700);
	yLoc = random(500,700);
	
	frameRate(15);
}

void draw() {
	// Star Definition
	float newXLoc_star = xLoc_star + random(100) - 50;
	float newYLoc_star = yLoc_star + random(50) - 25;
	float randStar = random(20);

	if(newXLoc_star<0){newXLoc_star = 0;}
	if(newXLoc_star>700){newXLoc_star = 350;}

	if(newYLoc_star<0){newYLoc_star = 0;}
	if(newYLoc_star>100){newYLoc_star = 50;}



	// People Walking
	float newXLoc = xLoc + random(200) - 100;
	float newYLoc = yLoc + random(100) - 50;
	float randPerson = random(30,60);

	if(newXLoc<0){newXLoc = 0;}
	if(newXLoc>700){newXLoc = 700;}

	if(newYLoc<500){newYLoc = 500;}
	if(newYLoc>700){newYLoc = 600;}



	// The sky
	noStroke();
	fill(0,random(100), random(255), int(random(0,50)));
	rect(0, random(0,150), 700, random(0,150));


	//The Stars
	noStroke();
	fill(255,255,255, random(100));
	ellipse(newXLoc_star, newYLoc_star, randStar, randStar);
	xLoc_star = newXLoc_star;
	yLoc_star = newYLoc_star;


	// The Moon
	stroke(255);
	fill(random(215,240),random(215,241),random(240,255), int(random(0,100)));
	ellipse(500, 100, 150, 150);

	noStroke();
	fill(0, int(random(60,100)));
	ellipse(random(450,500), random(100,150), 10, 10);


	// The City
	noStroke();
	fill(random(100),random(200), random(100), int(random(0,50)));
	rect(0, random(150,700), 700, random(150,700));
	
	stroke(14,62,18,50);
	fill(100,30);
	rect(random(0,700), random(200,700), random(0,700), random(150,700));
	
	fill(255,50);
	rect(random(0,700), random(300,600), random(100), random(100));

	fill(random(255),0,random(255), random(50));
	rect(random(0,700), random(200,400), random(100), random(100));
	

	//The People
	noStroke();
	fill(245, 234, 12, 60);
	ellipse(newXLoc, newYLoc, 10, 10);
	
	stroke(200,30);
	line(xLoc,yLoc, newXLoc,newYLoc);
	
	noStroke();
	fill(random(255),0,random(255), random(100));
	ellipse(newXLoc, newYLoc, randPerson, randPerson);
	xLoc = newXLoc;
	yLoc = newYLoc;


	// noStroke();
	// fill(0,0,random(255), random(255));
	// rect(0, random(0,150), 700, random(0,150));

	// line(xLoc,yLoc, newXLoc,newYLoc);
	// fill(random(255),0,random(255), 30);
	// ellipse(newXLoc, newYLoc, randCircle, randCircle);

	// xLoc = newXLoc;
	// yLoc = newYLoc;
}

void keyReleased(){
  if(key=='s' || key=='S'){
    save("image-" + frameCount + ".jpeg");
  }
}

void mousePressed(){
  saveFrame("image.jpeg");
}