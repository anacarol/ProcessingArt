int rectsize = 100;
int rectcount = 10;

void setup(){
	size(500, 500);
}

void draw(){
	for (int x = 0; x<rectcount; x++){
		for (int y = 0; y<rectcount; y++){
			fill(random(0,255));
			float s = random(0, rectsize);
			rect(x*100, y*100, s, s);
		}
	}
}