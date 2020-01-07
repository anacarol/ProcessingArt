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

public class customRandfunc extends PApplet {

public float customRandom(){
	float retValue = 1 - pow(random(1),5);
	return retValue;
}

public void setup() {
	
	background(255);

	strokeWeight(5);
	


	// // Same code I have inside the draw function, but here it happens only once.
	stroke(0,30);
	line(20, 50, 480, 50);

	float xstep = 1;

	float lastx = -999;
	float lasty = -999;

	float angle = 0;

	float y = 50;
	stroke(30, 50, 70);
	for(int x=20; x<=480; x+=xstep){
		float rad = radians(angle);

		y = 20 + (customRandom()*60);

		if(lastx>-999){
			line(x, y, lastx, lasty);
		}
		lastx = x;
		lasty = y;
		angle++;
	}
}
  public void settings() { 	size(500, 100); 	smooth(); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#666666", "--stop-color=#cccccc", "customRandfunc" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
