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

public class funSquares extends PApplet {

public void setup() {
	
	
	background(255);

	noFill();
	// stroke(random(255),0,random(255), 30);

	frameRate(500);
}



public void draw(){

	float t = (float)frameCount; // converting the count to a float
	
	translate(width/2, height/2);
	rectMode(CENTER);

	stroke(0, 30);
	rect(sin(t/400)*400, cos(t/400)*400, 100, 100);
	
	stroke(0, 0, 255, 30);
	rect(cos(t/300)*300, sin(t/300)*300, 100, 100);

	stroke(0, 255, 0, 10);
	rect(sin(t/200)*200, cos(t/200)*200, 100, 100);
	
	stroke(255, 0, 0, 30);
	rect(cos(t/100)*100, sin(t/100)*100, 100, 100);
	
}


public void keyPressed(){
	if(keyCode == ENTER){
		saveFrame("mandala-####.jpg");
	}
}
  public void settings() { 	size(800,800); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#666666", "--stop-color=#cccccc", "funSquares" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
