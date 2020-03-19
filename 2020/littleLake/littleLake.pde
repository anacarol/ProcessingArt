PImage mainImage;


void setup() {
	background(255, 255, 255);

	size(1000, 750);
	mainImage = loadImage("/Users/anacarolina/Desktop/myArt/ProcessingPhotos/littleLake.jpg");

	// image(mainImage, 0, 0);

	frameRate(5);
}

void draw() {
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