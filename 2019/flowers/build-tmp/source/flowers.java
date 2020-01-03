import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class flowers extends PApplet {

public void setup(){
	
	background(131,250,191);

	frameRate(10);
}

public void draw(){
	noStroke();
	
	// // center of the flower
	// // ellipse(300, 300, 30, 30);
	// // translate(width/2, height/2);

	translate(mouseX, mouseY);

	// rotate canvas using frame count
  	rotate(radians(frameCount + mouseX));


 // 	// Pick a center:
	// float x_mid = random(600);
	// float y_mid = random(600);
	// translate(x_mid, y_mid);
	// // ellipse(0, 0, 15, 15);
	

	// // first petal
	// fill(252,128,0);
	// ellipse(0, -30, 30, 30);
	// // I will draw the first petal together with the rotation loop, but start rotating after the first drwaing
	// draw 5 petals, rotating after each one
	
	for (int i = 0; i < 5; i++) {
		// fill(195,0,255);
		fill(20,70,16);
		ellipse(0, -20, 60, 60);
		rotate(radians(72));
	}

	for (int i = 0; i < 5; i++) {
		fill(252,128,0);
		ellipse(0, -25, 30, 30);
		rotate(radians(72));
	}

	fill(252,241,115);
	ellipse(0, 0, 30, 30);

}



// // lake waves
// void draw(){

// 	translate(width/2, height/2);
// 	fill(11,13,67,20);
// 	float miolo = random(10,500);
// 	ellipse(0, 0, miolo, miolo);

// 	float x = random(600);
// 	float y = random(10,600);

// 	fill(random(7,250),random(7,250),255);
// 	stroke(255);
// 	strokeWeight(1);
// 	ellipse(x, y, 10, 10);

// 	float n = 0;
// 	float nMax = random(100);
// 	while(n<nMax){

// 		rotate(0.09);
// 		ellipse(x, y, 10, 10);

// 		n = n + 1;

// 	}

// }



// // a wave kind of simulation
// void draw(){
// 	float x = random(600);
// 	float y = random(100,500);

// 	fill(random(7,250),random(7,250),255);
// 	stroke(255);
// 	strokeWeight(1);
// 	ellipse(x, y, 10, 10);

// 	float n = 0;
// 	float nMax = random(100);
// 	while(n<nMax){

// 		rotate(0.09);
// 		ellipse(x, y, 10, 10);

// 		n = n + 1;

// 	}

// }



// void draw(){

// 	// float minV = random(100,551);
// 	// float maxV = minV + 5;

// 	float xLen = 0;
// 	float yLen = 0;

// 	float minX = random(100,551);
// 	float minY = random(100,551);

// 	float maxX = minX + 5;
// 	float maxY = minY + 5;
	
// 	float x = random(minX,maxX+1);
// 	float y = random(minY,maxY+1);
// 	point(x, y);

// 	if((x > minX && x < maxX)){
// 		int nx = int(random(0,2));
// 		if(nx==0){
// 			x = minX;
// 			xLen = x - random(50);
// 		}
// 		else{
// 			x = maxX;
// 			xLen = x + random(50);
// 		}
// 		println("nx: "+nx);
// 	}
// 	else{
// 		if(x==minX){xLen = x - random(50);}
// 		else{xLen = x + random(50);}
// 	}

// 	if(y > minY && y < maxY){
// 		int ny = int(random(0,2));
// 		if(ny==0){
// 			y = minY;
// 			yLen = y - random(50);
// 		}
// 		else{
// 			y = maxY;
// 			yLen = y + random(50);
// 		}
// 		println("ny: "+ny);
// 	}
// 	else{
// 		if(y==minY){yLen = y - random(50);}
// 		else{yLen = y + random(50);}
// 	}
	

// 	line(x, y, xLen, yLen);

// }
  public void settings() { 	size(600,600); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "flowers" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
