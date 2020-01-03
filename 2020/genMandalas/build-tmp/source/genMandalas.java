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

public class genMandalas extends PApplet {

// float r = 200;


public void setup() {
	
	
	background(255);

	noFill();
	stroke(0, 40);

	// frameRate(10);
}

public void draw() {

	float t = (float)frameCount; // converting the count to a float

	// // moving my origin canvas position 
	// translate(0, height/2);   // move the coordinate to left middle

	// fill(0,random(0,255),random(0,255));
	// ellipse(t, sin(t/20)*100, 20,20);
	// ellipse(t, -sin(t/20)*100, 20,20);

	// // fill(random(0,255),0,random(0,255));
	// // ellipse(t, cos(t/20)*100, 20,20);


	// // // first experiment
	// // ellipse(frameCount, sin(radians(frameCount))*200, 50, 50);
	// // ellipse(frameCount, -sin(radians(frameCount))*200, 50, 50);


	// Moving my canvas origin to the center.
	translate(width/2, height/2);

	// ellipse(cos(t/20)*100, sin(t/20)*100, 20,20);
	// ellipse(sin(t/20)*100, cos(t/20)*100, 20,20);

	ellipse(sin(t/100)*100, cos(t/100)*100, 50,50);
 

 // 	float circle_size = random(50);
 // 	fill(random(0,255),random(0,255),random(0,255));
 // 	ellipse(t + r, sin(t/20)*100, circle_size, circle_size);
 // 	ellipse(t + r, -sin(t/20)*100, circle_size, circle_size);

 // 	r = r - 0.2;

	
}


// cos() starts at 1
// sin() starts at 0
// Their work combined will create circular motion

// a + sin(b)*c
// a will change the center of the wave.
// b will change the location (angle) within the wave. / changing the speed of the wave
// c will change the size of the wave.

// Remember: the angles are in Radians!
// 360degrees -> 2PI
// 180degrees -> PI
// 90degrees -> PI/2
  public void settings() { 	size(600,600); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "genMandalas" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
