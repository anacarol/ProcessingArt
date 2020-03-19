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

public class paintings extends PApplet {

PImage mainImage;


public void setup() {
	background(255, 255, 255);

	
	mainImage = loadImage("/Users/anacarolina/Desktop/myArt/ProcessingPhotos/leaves.jpg");

	// size(670, 1000);
	// mainImage = loadImage("/Users/anacarolina/Desktop/myArt/ProcessingPhotos/leaves_color.jpg");
		
	// size(1000, 750);
	// mainImage = loadImage("/Users/anacarolina/Desktop/myArt/ProcessingPhotos/drinks.JPG");
	// mainImage = loadImage("/Users/anacarolina/Desktop/myArt/ProcessingPhotos/sunset.jpeg");
	
	// image(mainImage, 0, 0);

	// frameRate(2000);
}

public void draw() {
	translate(width/2, height/2);

	float t = (float)frameCount;
	rotate(t);
	
	image(mainImage, 0, 0);
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
  public void settings() { 	size(433, 765); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#666666", "--stop-color=#cccccc", "paintings" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
