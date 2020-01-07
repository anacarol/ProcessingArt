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

public class bookNoise extends PApplet {

public void setup() {
	
	background(255);

	strokeWeight(5);
	


	// // Same code I have inside the draw function, but here it happens only once.
	stroke(0,30);
	line(20, 50, 480, 50);

	// stroke(20, 50, 70);

	// float randx = random(width);
	// float randy = random(height);
	// line(20, 50, randx, randy);	

	// // Now lets do the same thing but with Iterative variance:
	// int step = 10;

	// float lastx = -999;
	// float lasty = -999;
	
	// float y = 50;
	
	// int borderx = 20;
	// int bordery = 10;

	// stroke(20, 50, 70);

	// for(int x=borderx; x<=width-borderx; x+=step){
	// 	// this step by step line, lets you play with the variables...
	// 	y = bordery + random(height - 2*bordery); // here we randomly walk around y
	// 	if(lastx>-999){
	// 		line(x, y, lastx, lasty);
	// 	}
	// 	lastx = x;
	// 	lasty = y;
	// }


	// Now lets make this randomness less noisy:
	float xstep = 10;
	float ystep = 10;

	float lastx = 20;
	float lasty = 50;
	
	float y = 50;
	
	stroke(20, 50, 70);

	for(int x=20; x<=480; x+=xstep){
		ystep = random(20) - 10; // range from -10 to 10
		y += ystep;
		
		line(x, y, lastx, lasty);
		
		lastx = x;
		lasty = y;
	}

}

// void draw() {

// 	stroke(0,30);
// 	line(20, 50, 480, 50);

// 	stroke(20, 50, 70);

// 	float randx = random(width);
// 	float randy = random(height);
// 	line(20, 50, randx, randy);	


// }
  public void settings() { 	size(500, 100); 	smooth(); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#666666", "--stop-color=#cccccc", "bookNoise" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
