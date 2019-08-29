void setup() {
	size(700,700);
	background(255,255,255);
}

void draw() {
	
	// stroke(random(100));
	noStroke();
	fill(random(255), random(255), random(255),40);

	rect(random(350,700), random(350,700), random(100), random(100));
	ellipse(random(0,350), random(0,350), random(100), random(100));

	stroke(random(255),0,random(255));
	line(350,350,random(350,700),random(0,350));
	line(random(0,350),random(350,700),350,350);

}

void keyReleased(){
  if(key=='s' || key=='S'){
    save("image-" + frameCount + ".jpeg");
  }
}