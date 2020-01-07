size(500, 100);
background(255);

strokeWeight(5);
smooth();

stroke(0, 30);
line(20, 50, 480, 50);


float xstep = 1;

float lastx = -999;
float lasty = -999;

float angle = 0;

float y = 50;

stroke(30, 50, 70);
for(int x=20; x<=480; x+=xstep){
	float rad = radians(angle);

	// y = 50 + (sin(rad)*40);
	// y = 50 + (pow(sin(rad), 3)*40);  // lets cube the sin function
	y = 50 + (pow(sin(rad), 3)*noise(rad*2)*40);  // lets cube the sin function and add some noise

	// y = 50 + (cos(rad)*40);

	if(lastx>-999){
		line(x, y, lastx, lasty);
	}
	lastx = x;
	lasty = y;
	angle++;
}