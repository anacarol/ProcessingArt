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

public class littleLake extends PApplet {

PImage mainImage;


public void setup() {
	background(255, 255, 255);

	
	mainImage = loadImage("/Users/anacarolina/Desktop/myArt/ProcessingPhotos/littleLake.jpg");

	// image(mainImage, 0, 0);

	frameRate(5);
}

public void draw() {
	// translate(width/2, height/2);

	
	image(mainImage, 0, 0);
	strokeWeight(6);
	stroke(82, 82, 245);
	noFill();
	float lake = random(400);
	ellipse(width/2, height/2, lake, lake);
	// int randomX = (int) random(width);
	// int randomY = (int) random(height);

	// int pixelIndex = randomX + randomY*width;
	// color c = mainImage.pixels[pixelIndex];
	
	// // fill(0,255,0,50);
	// noStroke();
	// fill(c,100);
	// ellipse(randomX,randomY,40,40);
	// // rect(randomX,randomY,40,40);

	// // stroke(c);//,100);
	// // line(randomX,randomY,randomX+20,randomY+30);
	
}
  public void settings() { 	size(1000, 750); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#666666", "--stop-color=#cccccc", "littleLake" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
