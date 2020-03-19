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

public class ImageGrid extends PApplet {

PImage img;
PImage imgMask;

// 1.65 for 3x3 Grid
float grid_divider=1.65f;
float r = 0;
float mr = 11;
int image_incr_w=0;
int image_incr_h=0;

public void setup() {
  background(102, 102, 102);
  
  img = loadImage("5.png");
  imgMask = loadImage("11.png");
  img.mask(imgMask);
  imageMode(CORNER);


}

public void draw() {

  for(int image_incr_w=0;image_incr_w<width;image_incr_w+=img.width/grid_divider) {
    for (int image_incr_h=0;image_incr_h<height;image_incr_h+=img.height/grid_divider) {

      // Other stuff
      grid_divider = random(2,4);
      scale(random(0.1f,1));
      translate(random(0,width),random(0,width));
      rotate(random(0,180));    
      
      // Just the squares
      r = random(0,10);
      int rx = round(r);
      img = loadImage(rx +".png");
     
      
      // The masks
      mr = random(11,15);
      int mrx = round(mr);
      imgMask = loadImage(mrx +".png");
      img.mask(imgMask);
      
      // This code writes the image to the screen.
      image(img, image_incr_w, image_incr_h, img.width/grid_divider, img.height/grid_divider);
      


    }
  } 
}


public void keyPressed() {
  saveFrame("abstract-######.png"); 
}
  public void settings() {  size(640, 640); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#666666", "--stop-color=#cccccc", "ImageGrid" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
