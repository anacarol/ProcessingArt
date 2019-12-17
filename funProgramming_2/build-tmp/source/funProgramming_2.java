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

public class funProgramming_2 extends PApplet {

public void setup() {
    
    
    colorMode(HSB);
    background(random(255), random(50,100), random(50,100));
    // background(0);

}

public void draw() {

    noFill();
    stroke(255,100);
    // stroke(random(255),random(255),random(255));

    int i = 0;
    while (i < 100) {
        // // fill(255);
        // ellipse(width/2, height/2, 100+i*3, 100+i*3);

        // // fill(245,235,30);
        // // ellipse(width/2, height/2, 100-i, 100-i*2);

        // ellipse(width/2, height/2, 100+i*4, 100+i*4);

        ellipse(width/2 + i, height/2, 100+i*5, 100-i*5);
        i = i + 2;
    }
    
}
  public void settings() {  size(600,600); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "funProgramming_2" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
