import processing.pdf.*;


// Color Array
color[] colors = {#B507F5, #F50796, #FC8021, #F58E07};
int rows, cols;
float cellW, cellH;


void setup() {
	size(600,400);

	beginRecord(PDF, "Love_light.pdf");

	background(255);
	noStroke();

	// Grid Definition
	cols = 16;
	rows = 10;

	// Grid Cell Size Definition
	cellW = width/cols;
	cellH = height/rows;
	

	// frameRate(15);
	noLoop();
}

void draw() {
	for(int i=0; i<cols; i++){
		for(int j=0; j<rows; j++){
			
			int r = int(random(4));
			
			float circleSize = random(cellW);
			float squareSize = random(cellW);
			

			if(((i==1 && (j==3 || j==4 || j==5 || j==6)) || ((i==1 || i==2 || i==3) && j==6)) || 
				((i==5 || i==6 || i==7) && (j==3 || j==4 || j==5 || j==6)) || 
				((i==12 && (j==3 || j==4 || j==5 || j==6)) || (i==13 && (j==3||j==5||j==6)) || (i==14 && j==6))){
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
					
					fill(colors[r]);
					rect(i*cellW + ((cellW - squareSize)/2), j*cellH + ((cellH - squareSize)/2), squareSize, squareSize);

					r = int(random(4));
					squareSize = random(cellW);
					fill(colors[r], random(50,100));
					rect(i*cellW + ((cellW - squareSize)/2), j*cellH + ((cellH - squareSize)/2), squareSize, squareSize);

				}

			} else{

				fill(colors[r], random(50,100));
				triangle(i*cellW, (j+1)*cellH, (i+1)*cellW, (j+1)*cellH, i*cellW, j*cellH);

				r = int(random(4));
				fill(colors[r], random(50,100));
				triangle((i+1)*cellW, (j+1)*cellH, (i+1)*cellW, j*cellH, i*cellW, (j+1)*cellH);
						
				r = int(random(4));
				fill(colors[r], random(50,100));
				triangle(i*cellW, j*cellH, (i+1)*cellW, j*cellH, i*cellW, (j+1)*cellH);

			}
			
		}
	}

	// fill(random(255));
	fill(255);
	triangle(8.5*cellW, 3*cellH, 10*cellW, 7*cellH, 11.5*cellW, 3*cellH);

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