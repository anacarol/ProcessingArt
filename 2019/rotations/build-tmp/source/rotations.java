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

public class rotations extends PApplet {

float r = 500;

public void setup(){
	// noLoop();
	// frameRate(20);
	
	background(250,255,0);
}



public void draw(){

	noStroke();
	
	// fill(130,50,10, 80);
	// ellipse(random(0,250), random(0,250), 10, 10);

	rotate(r);
	int x = PApplet.parseInt(random(500));
	for (int step = 0; step<PApplet.parseInt(random(100)); step++){

		fill(random(0,255),random(0,255),random(0,255), 50);
		// ellipse(x + step, 100, x + 2*step, random(50));
		// ellipse(0 + r + step, 250, 10 + r + 2*step, random(50));
		ellipse(100 + r + step, 250, 10 + r + 2*step, random(50));

	}
	r = r - 0.5f;
	// if(r==0){
	// 	r = r + 0.01;
	// 	fill(0);
	// 	ellipse(r, r, 10, 10);
	// }
	println("(r): "+(r));
}
  public void settings() { 	size(500, 500); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "rotations" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
