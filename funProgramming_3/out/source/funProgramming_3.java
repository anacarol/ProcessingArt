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

public class funProgramming_3 extends PApplet {
  public void setup() {

textSize(200);
text("hello",100,200);

// void setup() {
//   size(400, 400);
//   background(#3355CC);
// }

// void draw() {
//   fill(#3355CC, 20);
//   rect(0,0,width, height);
// }

// void keyPressed() {
//   fill(#FFE200);
//   textSize(random(20, 200));
//   text(key, random(300), random(100,400));
// }



    noLoop();
  }

  public void settings() { size(600,600); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "funProgramming_3" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
