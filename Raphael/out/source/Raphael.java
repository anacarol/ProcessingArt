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

public class Raphael extends PApplet {

public void setup() {
  
  frameRate(2);
}

public void draw() {
  background(random(197), random(206), random(209));
  
  fill(0);
  ellipse(150,150, 300, 300);
  ellipse(550,150, 300, 300);
  
  fill(255);
  ellipse(100,200, 30, 30);
  ellipse(500,100, 30, 30);
  
  
  fill(0);
  arc(350, 400, 400, 400, 0, PI, CHORD);
  
  fill(255,0,0);
  arc(350, 560, 80, 80, 0, 2*PI, OPEN);
}
  public void settings() {  size(700, 625); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Raphael" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
