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

public class geo_butterfly extends PApplet {

int r = 0;

public void setup() {
    
    background(0xff91F085);

    frameRate(15);

}

public void draw() {

    // // fill(random(255),0,random(255),50);
    // fill(0,50);
    fill(0xff91F085, 10);
    noStroke();
    rect(0, 0, width, height);
    // background(#F0EB85);

    int n = PApplet.parseInt(random(3));

    if(n==0){
        noFill();
        stroke(255);    
        // r = 0;
    }
    if(n==1){
        fill(random(255),0,random(255),50);
        noStroke();
        rotate(random(100));
        // r = 0;
    }
    if(n==2){
        fill(0,random(255),random(255),50);
        noStroke();    
        rotate(0);
        r = r + 3;
        // r = int(random(-200,200));
    }
    println("r: "+r);
    if(r==300){r = -300;}
    // Right Wings
    triangle(400+r, 200+r, 450+r, 200+r, 425+r, 300+r);
    triangle(400+r, 200+r, 425+r, 300+r, 350+r, 235+r);
    triangle(350+r, 235+r, 425+r, 300+r, 330+r, 275+r);

    triangle(330+r, 275+r, 415+r, 330+r, 340+r, 340+r);
    triangle(415+r, 330+r, 340+r, 340+r, 375+r, 400+r);

    // Left Wings
    triangle(290+r, 235+r, 205+r, 300+r, 310+r, 275+r);
    triangle(290+r, 235+r, 205+r, 300+r, 240+r, 200+r);
    triangle(240+r, 200+r, 205+r, 300+r, 190+r, 200+r);

    triangle(310+r, 275+r, 225+r, 330+r, 300+r, 340+r);
    triangle(225+r, 330+r, 300+r, 340+r, 260+r, 400+r);


    // Body
    noStroke();
    fill(255);
    triangle(330+r, 275+r, 310+r, 275+r, 320+r, 245+r);
    triangle(330+r, 275+r, 310+r, 275+r, 320+r, 320+r);

    

    
}


public void keyPressed() {
    if (key == 's') {
        save("butterfly.jpg");
    }
}

  public void settings() {  size(640,600); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "geo_butterfly" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
