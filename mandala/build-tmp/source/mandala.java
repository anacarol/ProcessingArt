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

public class mandala extends PApplet {

float r = 200;

public void setup(){
	// noLoop();
	// frameRate(20);
	
	background(192,192,192);
}



public void draw(){

	noStroke();

	// // translate(125, 125);
	// translate(width/2, height/2);
	// rotate(r);

	// fill(random(0,255),random(0,255),random(0,255));
	// ellipse(250, 250, circle_size, circle_size);


	translate(width/2, height/2);
 	rotate(r);

 	float circle_size = random(50);

 	fill(random(0,255),random(0,255),random(0,255));
 	ellipse(100 + r, 10, circle_size, circle_size);
 	r = r - 0.2f;
	
}


// float r = 0;

// void setup() {
//   size(400,400);
//   background(10);
//   smooth();
//   noStroke();
// }
// void draw() {
//   translate(width/2, height/2);
//   fill(255);
//   rotate(r);
//   float circle_size = random(5, 15);
//   ellipse(100 + r, 10, circle_size, circle_size);
//   r = r + 0.2;
//   println(r);
// }



  public void settings() { 	size(500, 500); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "mandala" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
