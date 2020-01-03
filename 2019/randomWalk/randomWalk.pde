float xLoc;
float yLoc;

void setup() {
	size(700,700);
	background(255,240,130);
	stroke(255);

	xLoc = 0; //random(700);
	yLoc = 0; //random(700);
	
	// frameRate(2);
}

void draw() {
	float newXLoc = xLoc + random(250) - 100;
	float newYLoc = yLoc + random(250) - 100;
	float randCircle = random(50);

	if(newXLoc<0){newXLoc = 0;}
	if(newXLoc>700){newXLoc = 350;}

	if(newYLoc<0){newYLoc = 0;}
	if(newYLoc>700){newYLoc = 350;}

	line(xLoc,yLoc, newXLoc,newYLoc);
	fill(random(255),0,random(255), 30);
	ellipse(newXLoc, newYLoc, randCircle, randCircle);

	xLoc = newXLoc;
	yLoc = newYLoc;
}

void keyReleased(){
  if(key=='s' || key=='S'){
    save("image-" + frameCount + ".jpeg");
  }
}

void mousePressed(){
  saveFrame("image.jpeg");
}