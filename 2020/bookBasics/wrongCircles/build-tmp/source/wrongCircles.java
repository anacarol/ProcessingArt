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

public class wrongCircles extends PApplet {
  public void setup() {

background(255);

// strokeWeight(5);
strokeWeight(0.5f);




// float radius = 100;
int centX = 250;
int centY = 150;

// stroke(0, 30);
// noFill();

// ellipse(centX, centY, radius*2, radius*2);

// // Lets now draw this circle in increments: a spiral
// stroke(20, 50, 70);

//repeating the noisy spiral a few times
float radius;
float x, y;
for(int i=0; i<100; i++){
	radius = 10;  // redefining the radius, so I can turn my circle into a spiral
	// To turn a circle into a spiral I need to increase the radius and the angle turns

	float lastx = -999;
	float lasty = -999;

	float radiusNoise = random(10);  // adding some noise to the spiral
	stroke(random(20), random(50), random(70), 80);

	int startangle = PApplet.parseInt(random(360));
	int endangle = PApplet.parseInt(random(1440));
	int anglestep = 5 + PApplet.parseInt(random(3));

	for(float ang = 0; ang <= 1440; ang+=5){
		radius+=0.3f;
		radiusNoise+=0.03f;
		float thisRadius = radius + (noise(radiusNoise)*200) - 100;

		float rad = radians(ang);

		// x = centX + (radius*cos(rad));
		// y = centY + (radius*sin(rad));
		x = centX + (thisRadius*cos(rad));
		y = centY + (thisRadius*sin(rad));

		if(lastx>-999){
			line(x,y,lastx,lasty);
		}
		lastx = x;
		lasty = y;
	}
}

// // circle by dots
// float radius = 100;
// int centX = 250;
// int centY = 150;

// stroke(0, 30);
// noFill();

// ellipse(centX, centY, radius*2, radius*2);

// // Lets now draw this circle in increments:
// stroke(20, 50, 70);
// float x, y;
// float lastx = -999;
// float lasty = -999;

// for(float ang = 0; ang <= 360; ang+=5){
// 	float rad = radians(ang);
// 	x = centX + (radius*cos(rad));
// 	y = centY + (radius*sin(rad));
// 	point(x,y);
// }


// ellipse(x, y, diameter, diameter);
// X = centerX + (radius*cos(angle));
// Y = centerY + (radius*sin(angle));

// cos() starts at 1
// sin() starts at 0
// Their work combined will create circular motion

// a + sin(b)*c
// a will change the center of the wave.
// b will change the location (angle) within the wave. / changing the speed of the wave
// c will change the size of the wave.
    noLoop();
  }

  public void settings() { size(500,300); 
smooth(); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#666666", "--stop-color=#cccccc", "wrongCircles" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
