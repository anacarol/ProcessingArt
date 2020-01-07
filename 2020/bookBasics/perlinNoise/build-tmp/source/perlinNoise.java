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

public class perlinNoise extends PApplet {
  public void setup() {

background(255);

strokeWeight(5);


stroke(0, 30);
line(20, 50, 480, 50);



int step = 10;

float lastx = -999;
float lasty = -999;

float ynoise = random(10);
float y;

stroke(30, 50, 70);
for(int x=20; x<480; x+=step){
	y = 10 + noise(ynoise)*80;
	if(lastx>-999){
		line(x, y, lastx, lasty);
	}
	lastx = x;
	lasty = y;
	ynoise+=0.1f;
}
    noLoop();
  }

  public void settings() { size(500, 100); 
smooth(); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#666666", "--stop-color=#cccccc", "perlinNoise" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
