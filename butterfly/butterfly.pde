import processing.pdf.*;


// Color Array
color[] colors = {#B507F5, #F50796, #FC8021, #F58E07};
int rows, cols;
float cellW, cellH;


void setup() {
	size(600,400);
	// fullScreen();

	// beginRecord(PDF, "Love_light.pdf");

	background(255);
	noStroke();

	// Grid Definition
	cols = 20;
	rows = 18;

	// Grid Cell Size Definition
	cellW = width/cols;
	cellH = height/rows;
	

	frameRate(15);
	// noLoop();
}

void draw() {
	int randomPos = int(random(2));
	if(randomPos==0){

		for(int i=0; i<cols; i++){
			for(int j=0; j<rows; j++){
				
				int r = int(random(4));
				
				float circleSize = random(cellW);
				float squareSize = random(cellW);

				if(((i==8||i==11) && (j==5||j==7||j==8||j==9||j==10||j==11||j==12||j==13||j==14)) ||
					((i==7||i==12) && (j==4||j==6||j==8||j==14)) ||
					((i==6||i==13) && (j==3||j==7||j==9||j==14)) ||
					((i==5||i==14) && (j==3||j==8||j==10||j==14)) ||
					((i==4||i==15) && (j==4||j==5||j==6||j==7||j==8||j==9||j==11||j==14)) ||
					((i==3||i==16) && (j==12||j==13||j==14))) {
					fill(colors[r], random(50,100));
					ellipse(i*cellW + cellW/2, j*cellH + cellH/2, cellW, cellW);

				} 
			}
		}

	} else {

		for(int i=0; i<cols; i++){
			for(int j=0; j<rows; j++){
				
				if(((i==8||i==11) && (j==3||j==5||j==6||j==7||j==8||j==9||j==10||j==11||j==12)) ||
					((i==7||i==12) && (j==2||j==4||j==6||j==12)) ||
					((i==6||i==13) && (j==1||j==5||j==7||j==12)) ||
					((i==5||i==14) && (j==1||j==6||j==8||j==12)) ||
					((i==4||i==15) && (j==2||j==3||j==4||j==5||j==6||j==7||j==9||j==12)) ||
					((i==3||i==16) && (j==10||j==11||j==12))) {
					fill(random(255));
					ellipse(i*cellW + cellW/2, j*cellH + cellH/2, cellW, cellW);

				} 
			}
		}
	}

	// fill(random(255));
	fill(255,248,113, random(50,100));
	ellipse(10*cellW, 7*cellH+ cellH/2, cellW + cellW/2, 4*cellH);

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