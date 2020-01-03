void setup() {
	size(700,700);
	background(255,249,131);
	stroke(255);
}

void draw() {
	
	float xLoc = random(700);
	float yLoc = random(700);

	// noStroke();
	fill(yLoc, 0, yLoc, 20);
	ellipse(xLoc, yLoc, xLoc/10, xLoc/10);

}

void keyReleased(){
  if(key=='s' || key=='S'){
    save("image-" + frameCount + ".jpeg");
  }
}