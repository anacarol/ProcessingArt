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

public class bookBasic_1 extends PApplet {

int diam = 10;
float centX, centY;

public void setup() {
	
	background(180);

	centX = width/2;
	centY = height/2;

	

	stroke(0);
	strokeWeight(5);

	fill(255, 50);

	frameRate(24);
}


public void draw() {
	
	if(diam <= 400){
		// background(180); // if this is not here I only leave traces of the circle moving
		// with it, you only see the circle growing
		// without it, you see the traces of the gowing circle

		strokeWeight(5);
		fill(255, 50);
		ellipse(centX, centY, diam, diam);

		strokeWeight(0);
		noFill();
		int tempdiam = diam;
		while(tempdiam > 10){
			ellipse(centX, centY, tempdiam, tempdiam);
			tempdiam -=10;
			// println("tempdiam: "+tempdiam);
		}

		diam +=10;
		// println("diam: "+diam);
	}	

}
  public void settings() { 	size(500, 300); 	smooth(); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#666666", "--stop-color=#cccccc", "bookBasic_1" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
