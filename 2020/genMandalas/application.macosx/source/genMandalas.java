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

public void setup() {
	
	
	background(0);

	noFill();
	stroke(random(255),0,random(255), 40);

	// frameRate(10);
}



public void draw(){

	float t = (float)frameCount; // converting the count to a float
	
	// Moving my canvas origin to the center.
	translate(width/2, height/2);

	
	// circle
	ellipse(sin(t/40)*40, cos(t/40)*40, 30,30);
	ellipse(sin(t/40)*100, cos(t/40)*100, 30,30);
	ellipse(sin(t/40)*200, cos(t/40)*200, 30,30);
	ellipse(sin(t/40)*300, cos(t/40)*300, 30,30);

	rotate(t/20);

	// ellipse
	ellipse(sin(t/40)*40, cos(t/40)*100, 30,30);
	ellipse(sin(t/40)*100, cos(t/40)*40, 30,30);

	ellipse(sin(t), cos(t), 30,30);

	ellipse(sin(t/40)*100, cos(t/40)*400, 30,30);
	ellipse(sin(t/40)*400, cos(t/40)*100, 30,30);

	ellipse(sin(t/40)*200, cos(t/40)*100, 30,30);
	ellipse(sin(t/40)*100, cos(t/40)*200, 30,30);


}



// // rotating a triangle moving on a sin cos wave...
// void draw(){

// 	float t = (float)frameCount; // converting the count to a float
	
// 	// Moving my canvas origin to the center.
// 	translate(width/2, height/2);

// 	stroke(random(255),0,random(255), 40);

// 	rotate(t/20);

// 	triangle(sin(t/40)*100, t, cos(t/40)*100, t, 30, 30);
// 	triangle(-sin(t/40)*100, t, -cos(t/40)*100, t, 30, 30);

// }



// // making a perfect circle, using cos and sin for x and y, and centering in the middle of the canvas
// void draw() {

// 	float t = (float)frameCount; // converting the count to a float
	
// 	// Moving my canvas origin to the center.
// 	translate(width/2, height/2);

// 	ellipse(cos(t/20)*100, sin(t/20)*100, 20,20);
// 	ellipse(sin(t/20)*100, cos(t/20)*100, 20,20);

// 	ellipse(sin(t/100)*100, cos(t/100)*100, 50,50);
	
// }



// // second experiment: transform the count into float
// void draw(){

// 	float t = (float)frameCount; // converting the count to a float

// 	// moving my origin canvas position 
// 	translate(0, height/2);   // move the coordinate to left middle

// 	fill(0,random(0,255),random(0,255));
// 	ellipse(t, sin(t/20)*100, 20,20);
// 	ellipse(t, -sin(t/20)*100, 20,20);

// 	// fill(random(0,255),0,random(0,255));
// 	// ellipse(t, cos(t/20)*100, 20,20);

// }



// // first experiment
// void draw(){

// 	// moving my origin canvas position 
// 	translate(0, height/2);   // move the coordinate to left middle

// 	ellipse(frameCount, sin(radians(frameCount))*200, 50, 50);
// 	ellipse(frameCount, -sin(radians(frameCount))*200, 50, 50);

// }


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
    String[] appletArgs = new String[] { "--present", "--window-color=#666666", "--stop-color=#cccccc", "genMandalas" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
