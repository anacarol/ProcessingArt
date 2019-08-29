void setup() {
	size(700,700);
	background(255,255,255);
}

void draw() {
	
	stroke(random(100));
	// noStroke();
	fill(random(255), random(255), random(255),20);
	rect(random(650), random(650), random(100), random(100));

	// stroke(255,0,0);
	// line(50,50, 700, frameCount);
}

void keyReleased(){
  if(key=='s' || key=='S'){
    save("image-" + frameCount + ".jpeg");
  }
}