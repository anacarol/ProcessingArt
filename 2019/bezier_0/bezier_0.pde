int rows, cols;
float cellW, cellH;


void setup() {
	size(600, 400); 
	// stroke(255);
	noFill();

	// Grid Definition
	cols = 16;
	rows = 10;

	// Grid Cell Size Definition
	cellW = width/cols;
	cellH = height/rows;
}

void draw() {
  background(0);
  for (int i = 0; i < cols; i += 20) {
  	stroke(255);
    bezier(i/2.0, 40+i, 410, 20, 440, 300, 240-(i/16.0), 300+(i/8.0));
    for(int j = 0; j<rows; j += 20){
    	stroke(random(255),0,0);
    	bezier(j-(i/2.0), 40+i, 410, 20, 440, 300, 240-(i/16.0), 300+(i/8.0));	
    }
    // bezier(mouseX-(i/2.0), 40+i, 410, 20, 440, 300, 240-(i/16.0), 300+(i/8.0));
  }
}
