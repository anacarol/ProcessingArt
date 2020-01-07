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

public class spirals extends PApplet {

float radius = 10;

public void setup() {
	
	
	background(255);

	noFill();
	stroke(random(255),0,random(255), 40);


	// frameRate(10);
}



public void draw(){

	// noStroke();
	// fill(255,5);
	// rect(0, 0, width, height);

	float t = (float)frameCount;

	// stroke(random(255),0,random(255), 40);

	int centX = width/2;
	int centY = height/2;

	float x, y;
	float lastx = -999;
	float lasty = -999;
	
	for(float ang = 0; ang <= t; ang+=15){
		radius+=0.03f;
		float rad = radians(ang);

		x = centX + (radius*cos(rad));
		y = centY + (radius*sin(rad));
		
	
		if(lastx>-999){
			line(x,y,lastx,lasty);
		}
		lastx = x;
		lasty = y;
	}


}


// void keyPressed(){
// 	if(keyCode == ENTER){
// 		saveFrame("mandala-####.jpg");
// 	}
// }
  public void settings() { 	size(600,600); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#666666", "--stop-color=#cccccc", "spirals" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
