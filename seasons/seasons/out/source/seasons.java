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

public class seasons extends PApplet {

float yLoc = 0;
float sunDown_x = 0;
float sunDown_y = 0;
float sunX, sunY;

public void setup() {
  
  background(0xffBCF9FF);  
  
  colorMode(HSB);
  frameRate(20);
}

public void draw() {
  println(frameCount);

  // sunny day
  if(frameCount < 200){

    background(0xffBCF9FF);
    noStroke();
    fill(0xffF8FC00);

    sunX = 100 + sunDown_x;
    sunY = 100 + sunDown_y;
    ellipse(sunX, sunY, 100, 100);
    
    sunDown_x = sunDown_x + 2;
    sunDown_y = sunDown_y + 1;

    if(sunX > width){
      // background(random(random(185,200),random(10,40)),87,95);
      background(random(17,36),87,95);
    }
    // ToDo: add some clouds and trees or birds...
  }


  // rainy day
  if(frameCount > 200 && frameCount<500){
    noStroke();

    fill(0xff0E1846);
    ellipse(0, 0, 100, 100);
    ellipse(50, 0, 100, 100);
    ellipse(100, 0, 100, 100);
    ellipse(150, 0, 100, 100);  

    ellipse(250, 30, 100, 100);
    ellipse(300, 30, 100, 100);
    ellipse(350, 30, 100, 100);
    ellipse(400, 30, 100, 100);

    // fill(#FCD0A3, 20);
    fill(0, 10);
    rect(0, 0, width, height);

    float rainColor = random(255);
    stroke(rainColor,250,255); // Hue, Saturation and Brightness);
    strokeWeight(2);
    
    float xLoc = random(width);
    yLoc = yLoc + random(10); //random(height);
    if(yLoc > height){
      fill(rainColor,250,255); // Hue, Saturation and Brightness);
      ellipse(xLoc, yLoc, 20, 20);
      yLoc = 0;
    }
    
    line(xLoc, yLoc, xLoc, yLoc + 5);
    
  }

  // starry night
  if(frameCount > 500){
    noStroke();

    fill(0, 10);
    rect(0, 0, width, height);

    fill(255);
    ellipse(random(width), random(height/2), random(10), random(10));
    
  }

  // //println(frameCount);
  
}
  public void settings() {  size(400,300); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "seasons" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
