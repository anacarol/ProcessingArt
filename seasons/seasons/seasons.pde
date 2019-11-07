float yLoc = 0;

void setup() {
  size(400,300);
  background(0);  
  
  colorMode(HSB);
  //frameRate(100);
}

void draw() {
  noStroke();
  fill(255);
  ellipse(0, 0, 100, 100);
  ellipse(50, 0, 100, 100);
  ellipse(100, 0, 100, 100);
  ellipse(150, 0, 100, 100);
  
  ellipse(250, 30, 100, 100);
  ellipse(300, 30, 100, 100);
  ellipse(350, 30, 100, 100);
  ellipse(400, 30, 100, 100);

  // fading effect
  fill(0,10);
  rect(0, 0, width, height);
  
  // rain
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
  
  println(frameCount);
  
  
}
