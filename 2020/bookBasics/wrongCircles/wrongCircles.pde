size(500,300);
background(255);

// strokeWeight(5);
strokeWeight(0.5);
smooth();



// float radius = 100;
int centX = 250;
int centY = 150;

// stroke(0, 30);
// noFill();

// ellipse(centX, centY, radius*2, radius*2);

// // Lets now draw this circle in increments: a spiral
// stroke(20, 50, 70);

//repeating the noisy spiral a few times
float radius;
float x, y;
for(int i=0; i<100; i++){
	radius = 10;  // redefining the radius, so I can turn my circle into a spiral
	// To turn a circle into a spiral I need to increase the radius and the angle turns

	float lastx = -999;
	float lasty = -999;

	float radiusNoise = random(10);  // adding some noise to the spiral
	stroke(random(20), random(50), random(70), 80);

	int startangle = int(random(360));
	int endangle = int(random(1440));
	int anglestep = 5 + int(random(3));

	for(float ang = 0; ang <= 1440; ang+=5){
		radius+=0.3;
		radiusNoise+=0.03;
		float thisRadius = radius + (noise(radiusNoise)*200) - 100;

		float rad = radians(ang);

		// x = centX + (radius*cos(rad));
		// y = centY + (radius*sin(rad));
		x = centX + (thisRadius*cos(rad));
		y = centY + (thisRadius*sin(rad));

		if(lastx>-999){
			line(x,y,lastx,lasty);
		}
		lastx = x;
		lasty = y;
	}
}

// // circle by dots
// float radius = 100;
// int centX = 250;
// int centY = 150;

// stroke(0, 30);
// noFill();

// ellipse(centX, centY, radius*2, radius*2);

// // Lets now draw this circle in increments:
// stroke(20, 50, 70);
// float x, y;
// float lastx = -999;
// float lasty = -999;

// for(float ang = 0; ang <= 360; ang+=5){
// 	float rad = radians(ang);
// 	x = centX + (radius*cos(rad));
// 	y = centY + (radius*sin(rad));
// 	point(x,y);
// }


// ellipse(x, y, diameter, diameter);
// X = centerX + (radius*cos(angle));
// Y = centerY + (radius*sin(angle));

// cos() starts at 1
// sin() starts at 0
// Their work combined will create circular motion

// a + sin(b)*c
// a will change the center of the wave.
// b will change the location (angle) within the wave. / changing the speed of the wave
// c will change the size of the wave.