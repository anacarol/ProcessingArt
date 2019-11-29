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

// size(700,400);
// background(255);

// textSize(160);
// fill(232,222,10);
// // text("hello",10,240);
// text("Bom Dia",20,240);

// textSize(80);
// text("flor do dia", 150, 320);


public void setup() {
  
  background(255);
}

public void draw() {
  fill(0, 20);
  rect(0,0,width, height);
    
}

public void keyPressed() {
//   fill(#FFE200);
//   textSize(random(20, 200));
//   text(key, random(300), random(100,400));

    textSize(random(10,160));
    fill(232,222,10);
    text(key,random(width),random(160,height));
    
    // textSize(80);
    // text("flor do dia", 150, 320);

}



  public void settings() {  size(700, 400); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "funProgramming_3" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
