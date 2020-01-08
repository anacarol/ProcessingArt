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

public class funTriangles extends PApplet {

public void setup() {
	
	
	background(255);

	noFill();
	// stroke(random(255),0,random(255), 30);

	frameRate(200);
}



public void draw(){

	float t = (float)frameCount; // converting the count to a float
	
	// // Moving my canvas origin to the center.
	// translate(width/4, height/10);
	// triangle(sin(t/80)*80, cos(t/80)*80, sin(t/80)*80 + t, cos(t/80)*80 + t, 30, 30);
	// triangle(cos(t/80)*80, sin(t/80)*80, cos(t/80)*80 + t, sin(t/80)*80 + t, 30, 30);

	// triangle(sin(t/80)*80, cos(t/80)*80, sin(t/80)*80 + t, cos(t/80)*80 + t, 30, 30);


	translate(width/2, height/2);

	stroke(150, 30);
	triangle(sin(t/400)*400, cos(t/400)*400,  cos(t/400)*400, sin(t/400)*400, sin(t/300)*300, cos(t/300)*300);
	
	stroke(255, 30);
	triangle(sin(t/400)*400, cos(t/400)*400,  cos(t/300)*300, sin(t/300)*300, sin(t/300)*300, cos(t/300)*300);

	stroke(0, 255, 0, 10);
	triangle(cos(t/100)*100, sin(t/100)*100, sin(t/100)*100, cos(t/100)*100, sin(t/200)*200, cos(t/200)*200);
	
	stroke(0, 80);
	triangle(cos(t/100)*100, sin(t/100)*100, cos(t/100)*100, sin(t/100)*100, sin(t/200)*200, cos(t/200)*200);
	
	stroke(255, 0, 0, 30);
	triangle(sin(t/80)*80, cos(t/80)*80,  cos(t/80)*80, sin(t/80)*80, sin(t/40)*40, cos(t/40)*40);
	
	stroke(0, 0, 255, 30);
	triangle(sin(t/80)*80, cos(t/80)*80,  cos(t/40)*40, sin(t/40)*40, sin(t/40)*40, cos(t/40)*40);
	
	stroke(0, 255, 0, 80);
	triangle(cos(t/20)*20, sin(t/20)*20, sin(t/20)*20, cos(t/20)*20, sin(t/10)*10, cos(t/10)*10);
	
	stroke(0, 80);
	triangle(cos(t/20)*20, sin(t/20)*20, cos(t/20)*20, sin(t/20)*20, sin(t/10)*10, cos(t/10)*10);

	
}


public void keyPressed(){
	if(keyCode == ENTER){
		saveFrame("mandala-####.jpg");
	}
}
  public void settings() { 	size(800,800); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#666666", "--stop-color=#cccccc", "funTriangles" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
