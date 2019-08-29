void setup() {
	size(700,700);
	background(255,240,130);
	
	// frameRate(2);
}

void draw() {
	noStroke();
	float randXLoc = random(700);
	float randDiam = random(100);

	if(randXLoc>350){
		fill(0,random(100),random(100),20);		
	} else{
		fill(random(200),0,random(100),20);
	}

	ellipse(randXLoc, random(700), randDiam, randDiam);

}

void keyReleased(){
  if(key=='s' || key=='S'){
    save("image-" + frameCount + ".jpeg");
  }
}