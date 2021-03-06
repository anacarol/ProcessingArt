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

public class butterfly_sizes extends PApplet {

int x = 0;
int y = 0;
int y_up = 0;
int y_down = 0;

public void setup() {
    
    background(0xff91F085);

    frameRate(6);

}

public void draw() {

    // // // fill(random(255),0,random(255),50);
    // // fill(0,50);
    // fill(#91F085, 30);
    // noStroke();
    // rect(0, 0, width, height);
    background(0xff91F085, 30);

    int n = PApplet.parseInt(random(3));

    if(n==0){
        noFill();
        stroke(255);    
        x = 0;
        y_up = 0;
        y_down = 0;
    }
    if(n==1){
        fill(random(255),random(255),0);
        stroke(random(255),random(255),0);
        y = y + 10;
        rotate(random(100));
        // r = 0;
    }
    if(n==2){
        fill(random(255),0,random(255));
        noStroke();    
        // rotate(0);
        
        // // r = r + 3;
        // // r = int(random(-200,200));
        x = PApplet.parseInt(random(400));
        // y = y + 3;
        // y = int(random(-400));

        int s = PApplet.parseInt(random(0,50));
        y_up = s;
        y_down = -1*s;
    }
    
    if(y==300){y = -300;}

    // Right Wings
    triangle(450+x, 200+y+y_up, 400+x, 200+y+y_up, 425+x, 300+y+y_down);
    triangle(400+x, 200+y+y_up, 350+x, 235+y+y_up, 425+x, 300+y+y_down);
    triangle(350+x, 235+y+y_up, 330+x, 275+y+y_up, 425+x, 300+y+y_down);

    triangle(330+x, 275+y+y_up, 415+x, 330+y+y_up, 340+x, 340+y+y_up);
    triangle(415+x, 330+y+y_up, 340+x, 340+y+y_up, 375+x, 400+y+y_down);

    // Left Wings
    triangle(310+x, 275+y+y_up, 290+x, 235+y+y_up, 205+x, 300+y+y_down);
    triangle(290+x, 235+y+y_up, 240+x, 200+y+y_up, 205+x, 300+y+y_down);
    triangle(240+x, 200+y+y_up, 190+x, 200+y+y_up, 205+x, 300+y+y_down);
    
    triangle(310+x, 275+y+y_up, 225+x, 330+y+y_up, 300+x, 340+y+y_up);
    triangle(225+x, 330+y+y_up, 300+x, 340+y+y_up, 260+x, 400+y+y_down);


    // Body
    noStroke();
    fill(255);
    triangle(330+x, 275+y+y_up, 310+x, 275+y+y_up, 320+x, 245+y+y_up);
    triangle(330+x, 275+y+y_up, 310+x, 275+y+y_up, 320+x, 320+y+y_down);

    

    
}


public void keyPressed() {
    if (key == 's') {
        save("butterfly.jpg");
    }
}

  public void settings() {  size(640,600); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "butterfly_sizes" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
