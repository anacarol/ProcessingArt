PImage mainImage;


void setup() {
	background(255, 255, 255);

	size(433, 765);
	mainImage = loadImage("/Users/anacarolina/Desktop/myArt/ProcessingPhotos/leaves.jpg");

	// size(670, 1000);
	// mainImage = loadImage("/Users/anacarolina/Desktop/myArt/ProcessingPhotos/leaves_color.jpg");
		
	// size(1000, 750);
	// mainImage = loadImage("/Users/anacarolina/Desktop/myArt/ProcessingPhotos/drinks.JPG");
	// mainImage = loadImage("/Users/anacarolina/Desktop/myArt/ProcessingPhotos/sunset.jpeg");
	
	// image(mainImage, 0, 0);

	// frameRate(2000);
}

void draw() {
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