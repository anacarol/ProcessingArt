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

public class patternRot extends PApplet {
  public void setup() {

background(38,232,21);
noStroke();

// smooth();

// rotate(0.5);
// rect(10, 10, width-20, height-20);

// rotate(0.2);
// rect(10, 10, width-20, 20);

float c = 0;
while(c<100){
    fill(random(255));
    // rect(10, 10, width-20, 20);
    rect(200, 10, 50, 5);

    fill(255, 0, 0);
    rect(260, 10, 10, 5);
    rect(180, 10, 10, 5);

    fill(0, 0, 255);
    ellipse(280, 10, 10, 10);
    ellipse(160, 10, 10, 10);

    c = c + 1;
    
    rotate(0.03f);
}
    noLoop();
  }

  public void settings() { size(400, 300); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "patternRot" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
