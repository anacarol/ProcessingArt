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

public class magicRain extends PApplet {

float yLoc = 0;

public void setup() {
  
  background(0);  
  
  colorMode(HSB);
  //frameRate(100);
}

public void draw() {
  noStroke();
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
  fill(0,10);
  rect(0, 0, width, height);
  
  // rain
  float rainColor = random(255);
  stroke(rainColor,250,255); // Hue, Saturation and Brightness);
  strokeWeight(2);
  
  float xLoc = random(width);
  yLoc = yLoc + random(10); //random(height);
  if(yLoc > height){
    fill(rainColor,250,255); // Hue, Saturation and Brightness);
    ellipse(xLoc, yLoc, 20, 20);
    yLoc = 0;
   }
  
  line(xLoc, yLoc, xLoc, yLoc + 5);
  
  
}
  public void settings() {  size(400,300); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "magicRain" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
