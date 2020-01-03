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

public class codeTest1 extends PApplet {

public void setup() {
 
 

 background(150);
 
 stroke(0, 50);
 fill(255, 200);
 
  float xstart = random(10);
  float ynoise = random(10);
 
  translate(width/2, height/2, 0);
 
  for (float y = -(height/8); y <= (height/8); y+=3) {
   ynoise += 0.02f;
   float xnoise = xstart;
   for (float x = -(width/8); x <= (width/8); x+=3) {
    xnoise += 0.02f;
    drawPoint(x, y, noise(xnoise, ynoise));
   }
  }
 
}

 public void drawPoint(float x, float y, float noiseFactor) {
  pushMatrix();
  translate(x * noiseFactor * 4, y * noiseFactor * 4, -y);
  float edgeSize = noiseFactor * 26;
  ellipse(0, 0, edgeSize, edgeSize);
  popMatrix();
 }
  public void settings() {  size(600, 600, P3D); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "codeTest1" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
