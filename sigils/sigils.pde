// import processing.pdf.*;


// Color Array
color[] colors = {#B507F5, #F50796, #FC8021, #F58E07};
int rows, cols;
float cellW, cellH;


void setup() {
	size(600,400);

	// beginRecord(PDF, "Love_light.pdf");

	background(255);
	// noStroke();

	// Grid Definition
	cols = 3;
	rows = 3;

	// Grid Cell Size Definition
	cellW = width/cols;
	cellH = height/rows;
	

	// frameRate(15);
	noLoop();
}


// astral = 112913


void draw() {

	// um = (i==1 && j==2) => (x = [cellW,2*cellW] && y = [2*cellH,3*cellH])
	// dois = (i==2 && j==0) => (x = [2*cellW,3*cellW] && y = [0,cellH])
	// tres = (i==0 && j==1) = (x = [0,cellW] && y = [cellH, 2*cellH])
	// nove = (i==1 && j==0) => (x = [cellW,2*cellW] && y = [0,cellH])
	float x1 = random(cellW,2*cellW);
	float x2 = random(cellW,2*cellW);
	float x3 = random(2*cellW,3*cellW);
	float x4 = random(cellW,2*cellW);
	float x5 = random(cellW,2*cellW);
	float x6 = random(0,cellW);

	float y1 = random(2*cellH,3*cellH);
	float y2 = random(2*cellH,3*cellH);
	float y3 = random(0,cellH);
	float y4 = random(0,cellH);
	float y5 = random(2*cellH,3*cellH);
	float y6 = random(cellH, 2*cellH);

	line(x1, y1, x2, y2);
	line(x2, y2, x3, y3);
	line(x3, y3, x4, y4);
	line(x4, y4, x5, y5);
	line(x5, y5, x6, y6);


	// for(int i=0; i<cols; i++){
	// 	for(int j=0; j<rows; j++){
			
	// 		int r = int(random(4));
	// 		int n = int(random(1,10));
	// 		// println("cellW/n: "+cellW/n);
	// 		// println("cellH/n: "+cellH/n);
			
	// 		float circleSize = random(cellW/2);
	// 		float squareSize = random(cellW/2);

			
	// 		if((i==1 && j==2) || (i==2 && j==0) || (i==0 && j==1) || (i==1 && j==0)){ 
	// 			fill(colors[r], random(50,100));
	// 			ellipse(i*cellW + cellW/n, j*cellH + cellH/n, circleSize, circleSize);
	// 		} 
	// 		// else{

	// 		// 	fill(colors[r], random(50,100));
	// 		// 	triangle(i*cellW, (j+1)*cellH, (i+1)*cellW, (j+1)*cellH, i*cellW, j*cellH);

	// 		// 	r = int(random(4));
	// 		// 	fill(colors[r], random(50,100));
	// 		// 	triangle((i+1)*cellW, (j+1)*cellH, (i+1)*cellW, j*cellH, i*cellW, (j+1)*cellH);
						
	// 		// 	r = int(random(4));
	// 		// 	fill(colors[r], random(50,100));
	// 		// 	triangle(i*cellW, j*cellH, (i+1)*cellW, j*cellH, i*cellW, (j+1)*cellH);

	// 		// }
			
	// 	}
	// }

	// fill(random(255));
	// fill(255);
	// triangle(8.5*cellW, 3*cellH, 10*cellW, 7*cellH, 11.5*cellW, 3*cellH);

	// endRecord();

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