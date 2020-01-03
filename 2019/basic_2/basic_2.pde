void setup() {
	size(700,700);
	background(255,255,255);
}

void draw() {
	println(frameCount);

	stroke(0);
	line(50,50, random(650), random(650));

	stroke(255,0,0);
	line(50,50, 700, frameCount);
}

void keyReleased(){
  if(key=='s' || key=='S'){
    save("image-" + frameCount + ".jpeg");
  }
}