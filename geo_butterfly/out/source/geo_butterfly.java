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

int x = 0;
int y = 0;

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
        x = 0;
        y = 0;
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
        // r = r + 3;
        // r = int(random(-200,200));
        x = PApplet.parseInt(random(400));
        y = y + 3;
        y = PApplet.parseInt(random(-400));
    }
    // println("r: "+r);
    // if(r==300){r = -300;}
    // if(y==300){y = -300;}
    // Right Wings
    triangle(400+x, 200+y, 450+x, 200+y, 425+x, 300+y);
    triangle(400+x, 200+y, 425+x, 300+y, 350+x, 235+y);
    triangle(350+x, 235+y, 425+x, 300+y, 330+x, 275+y);

    triangle(330+x, 275+y, 415+x, 330+y, 340+x, 340+y);
    triangle(415+x, 330+y, 340+x, 340+y, 375+x, 400+y);

    // Left Wings
    triangle(290+x, 235+y, 205+x, 300+y, 310+x, 275+y);
    triangle(290+x, 235+y, 205+x, 300+y, 240+x, 200+y);
    triangle(240+x, 200+y, 205+x, 300+y, 190+x, 200+y);

    triangle(310+x, 275+y, 225+x, 330+y, 300+x, 340+y);
    triangle(225+x, 330+y, 300+x, 340+y, 260+x, 400+y);


    // Body
    noStroke();
    fill(255);
    triangle(330+x, 275+y, 310+x, 275+y, 320+x, 245+y);
    triangle(330+x, 275+y, 310+x, 275+y, 320+x, 320+y);

    

    
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
