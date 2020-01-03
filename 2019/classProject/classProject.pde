import processing.pdf.*;

// // Array Definition
// int[] var_01 = {2, 3, 5};
// float[] var_02 = {1.2, 3.5, 7.9};
// color[] var_03 = {#FFFFFF};

// Color Array
color[] colors = {#B507F5, #F50796, #FC8021, #F58E07};
int rows, cols;
float cellW, cellH;


void setup() {
	size(600,400);

	beginRecord(PDF, "generative_grid.pdf");

	background(255);//(184,92,222);
	noStroke();

	// Grid Definition
	cols = 15;
	rows = 10;

	// Grid Cell Size Definition
	cellW = width/cols;
	cellH = height/rows;
	// drawing in the center of the first cell:
	// (0 + cellW/2 ,0 + cellH/2);


	// Color Array

	
	// frameRate(15);
	noLoop();
}

void draw() {
	for(int i=0; i<cols; i++){
		for(int j=0; j<rows; j++){
			// rect(i*cellW, j*cellH, cellW, cellH);
			
			// float r = random(255);
			// float g = random(255);
			// float b = random(255);
			// fill(r,g,b, 50);

			int r = int(random(4));
			// fill(colors[r], random(50,100));

			fill(colors[r], random(50,100));
			triangle(i*cellW, (j+1)*cellH, (i+1)*cellW, (j+1)*cellH, i*cellW, j*cellH);

			r = int(random(4));
			fill(colors[r], random(50,100));
			triangle((i+1)*cellW, (j+1)*cellH, (i+1)*cellW, j*cellH, i*cellW, (j+1)*cellH);
					
			r = int(random(4));
			fill(colors[r], random(50,100));
			triangle(i*cellW, j*cellH, (i+1)*cellW, j*cellH, i*cellW, (j+1)*cellH);



			float circleSize = random(cellW);
			float squareSize = random(cellW);
			float triangleSide1 = random(cellW);
			float triangleSide2 = random(cellH);

			// controling the position:
			// change the location of the ellipses (or any defined object) with the toss of a coin (I am changing it into a square)
			int randomPos = int(random(2));

			if(randomPos==0){
				fill(colors[r], random(50,100));
				ellipse(i*cellW + cellW/2, j*cellH + cellH/2, circleSize, circleSize);
				
				r = int(random(4));
				circleSize = random(cellW);
				fill(colors[r], random(50,100));
				ellipse(i*cellW + cellW/2, j*cellH + cellH/2, circleSize, circleSize);

			} else{
				
				fill(colors[r], random(50));
				rect(i*cellW + ((cellW - squareSize)/2), j*cellH + ((cellH - squareSize)/2), squareSize, squareSize);

				r = int(random(4));
				squareSize = random(cellW);
				fill(colors[r], random(50,100));
				rect(i*cellW + ((cellW - squareSize)/2), j*cellH + ((cellH - squareSize)/2), squareSize, squareSize);

				
				// else{
				// 	fill(colors[r], random(50,100));
				// 	// ellipse(i*cellW + cellW/2, j*cellH + cellH/2, circleSize, circleSize);

				// 	// r = int(random(4));
				// 	// circleSize = random(cellW);
				// 	// fill(colors[r]);
				// 	// ellipse(i*cellW + cellW/2, j*cellH + cellH/2, circleSize, circleSize);

				// 	// // rect(i*cellW, j*cellH, squareSize, squareSize);

				// 	// triangle(i*cellW, j*cellH, i*cellW + random(cellW), j*cellH + random(cellH), i*cellW + random(cellW), j*cellH + random(cellH));
				// 	triangle(i*cellW, (j+1)*cellH, (i+1)*cellW, (j+1)*cellH, i*cellW, j*cellH);

				// 	r = int(random(4));
				// 	fill(colors[r], random(50,100));
				// 	triangle((i+1)*cellW, (j+1)*cellH, (i+1)*cellW, j*cellH, i*cellW, (j+1)*cellH);

				// 	r = int(random(4));
				// 	fill(colors[r], random(50,100));
				// 	triangle(i*cellW, j*cellH, (i+1)*cellW, j*cellH, i*cellW, (j+1)*cellH);
				// }
			}
			
		}
	}

	endRecord();

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