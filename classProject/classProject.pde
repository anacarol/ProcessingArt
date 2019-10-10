// example
// size(15,10);
// int cols = 15;
// int rows = 10;
// defining shape sizes: width/cols & height/rows -> the dimensions of our cells
// cellW = width/cols;
// cellH = height/rows;
// drawing in the center of the first cell:
// (0 + cellW/2 ,0 + cellH/2);


int rows, cols;
float cellW, cellH;


void setup() {
	size(600,400);
	background(184,92,222);

	cols = 15;
	rows = 10;

	cellW = width/cols;
	cellH = height/rows;
	
	// frameRate(15);
	noLoop();
}

void draw() {
	for(int i=0; i<cols; i++){
		for(int j=0; j<rows; j++){
			rect(i*cellW, j*cellH, cellW, cellH);
		}
	}

}



void keyReleased(){
  if(key=='s' || key=='S'){
    save("image-" + frameCount + ".jpeg");
  }
}

void mousePressed(){
  saveFrame("image.jpeg");
}


// We can either use a function called noloop inside draw, 
// or write the whole code inside setup, so there wont be any looping through frames