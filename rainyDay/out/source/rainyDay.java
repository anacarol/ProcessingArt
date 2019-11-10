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

public class rainyDay extends PApplet {

public void setup() {
  
  background(0);  
  noStroke();
  frameRate(100);
}

public void draw() {
  fill(255);
  ellipse(0, 0, 100, 100);
  ellipse(50, 0, 100, 100);
  ellipse(100, 0, 100, 100);
  ellipse(150, 0, 100, 100);
  
  ellipse(250, 30, 100, 100);
  ellipse(300, 30, 100, 100);
  ellipse(350, 30, 100, 100);
  ellipse(400, 30, 100, 100);

  // fading effect
  fill(0,20);
  rect(0, 0, width, height - 10);
  
  // stars...
  //fill(255);
  //ellipse(random(width), random(height), 5, 5);
  
  // rain
  stroke(255);
  strokeWeight(2);
  float xLoc = random(width);
  float yLoc = random(height);
  line(xLoc, yLoc, xLoc, yLoc + 15);
  
  // snow
//   fill(255);
//   ellipse(random(width), random(height), 5, 5);
}
  public void settings() {  size(400,300); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "rainyDay" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
