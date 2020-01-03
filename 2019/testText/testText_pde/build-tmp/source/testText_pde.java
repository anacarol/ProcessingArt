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

public class testText_pde extends PApplet {

// size(400,400);
// text("hello", 200, 200);


public void setup() {
  
  background(0xff3355CC);
}

public void draw() {
  fill(0xff3355CC, 20);
  rect(0,0,width, height);
}

public void keyPressed() {
  fill(0xffFFE200);
  textSize(random(20, 200));
  text(key, random(300), random(100,400));
}




  public void settings() {  size(400, 400); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "testText_pde" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
