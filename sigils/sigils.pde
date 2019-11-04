// import processing.pdf.*;

// void draw() {
//   int nums = inventory.get(2);
//   text(nums, width/2, height/2);
// }



// Color Array
color[] colors = {#B507F5, #F50796, #FC8021, #F58E07};
int rows, cols, nLen;
IntList name2Sigil;
float cellW, cellH;


void setup() {
	size(600,400);

	// beginRecord(PDF, "Love_light.pdf");

	name2Sigil = new IntList();

  // inventory.append(84);
  // inventory.append(15);
  // inventory.append(102);
  // println(inventory);
  // noLoop();
  // fill(0);
  // textAlign(CENTER);

	background(255);
	// noStroke();

	// Grid Definition
	cols = 3;
	rows = 3;

	// Grid Cell Size Definition
	cellW = width/cols;
	cellH = height/rows;
	

	// frameRate(15);
	// noLoop();
}




void draw() {
	// background(255);
	println(name2Sigil);
	nLen = name2Sigil.size();
	println("nLen: "+nLen);

	// um = (i==1 && j==2) => (x = [cellW,2*cellW] && y = [2*cellH,3*cellH])
	// dois = (i==2 && j==0) => (x = [2*cellW,3*cellW] && y = [0,cellH])
	// tres = (i==0 && j==1) => (x = [0,cellW] && y = [cellH, 2*cellH])
	// quatro = (i==0 && j==0) => (x = [0,cellW] && y = [0,cellH])
	// cinco = (i==1 && j==1) => (x = [cellW,2*cellW] && y = [cellH,2*cellH])
	// seis = (i==2 && j==2) => (x = [2*cellW,3*cellW] && y = [2*cellH,3*cellH])
	// sete = (1==2 && j==1) => (x = [2*cellW,3*cellW] && y = [cellH,2*cellH])
	// oito = (i==2 && j==2) => (x = [2*cellW,3*cellW] && y = [2*cellH,3*cellH])
	// nove = (i==1 && j==0) => (x = [cellW,2*cellW] && y = [0,cellH])
	
	// **** If there is no Loop: one word example -> astral = [112913] ****//
	// float x1 = random(cellW,2*cellW);
	// float x2 = random(cellW,2*cellW);
	// float x3 = random(2*cellW,3*cellW);
	// float x4 = random(cellW,2*cellW);
	// float x5 = random(cellW,2*cellW);
	// float x6 = random(0,cellW);

	// float y1 = random(2*cellH,3*cellH);
	// float y2 = random(2*cellH,3*cellH);
	// float y3 = random(0,cellH);
	// float y4 = random(0,cellH);
	// float y5 = random(2*cellH,3*cellH);
	// float y6 = random(cellH, 2*cellH);

	// line(x1, y1, x2, y2);
	// line(x2, y2, x3, y3);
	// line(x3, y3, x4, y4);
	// line(x4, y4, x5, y5);
	// line(x5, y5, x6, y6);



	// endRecord();

}



void keyReleased(){

	if(key=='a' || key=='j' || key=='s'){
		name2Sigil.append(1);
	}
	if(key=='b' || key=='k' || key=='t'){
		name2Sigil.append(2);
	}
	if(key=='c' || key=='l' || key=='u'){
		name2Sigil.append(3);
	}
	if(key=='d' || key=='m' || key=='v'){
		name2Sigil.append(4);
	}
	if(key=='e' || key=='n' || key=='w'){
		name2Sigil.append(5);
	}
	if(key=='f' || key=='o' || key=='x'){
		name2Sigil.append(6);
	}
	if(key=='g' || key=='p' || key=='y'){
		name2Sigil.append(7);
	}
	if(key=='h' || key=='q' || key=='z'){
		name2Sigil.append(8);
	}
	if(key=='i' || key=='r'){
		name2Sigil.append(9);
	}

  // if(key=='s' || key=='S'){
  //   // save("image-" + frameCount + ".jpeg");
  //   int nums = name2Sigil.append();
  // }
}

void mousePressed(){
  saveFrame("image.jpeg");
}


// We can either use a function called noloop inside draw, 
// or write the whole code inside setup, so there wont be any looping through frames