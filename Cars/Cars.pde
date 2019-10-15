// Object-oriented programming allows us to take all of the variables and functions out of the main program and store them inside a car object. 
// A car object will know about its data—color, location, speed. 
// The object will also know about the stuff it can do, the methods (functions inside an object)—the car can drive and it can be displayed. 
// Using object-oriented design, the pseudocode improves to look something like this: 

// Data (Global Variables):
	// Car object.
	// we remove all of the global variables from the first example (theCar). 
	// Instead of having separate variables for car color, car location, and car speed, we now have only one variable: a Car variable.

// Class Definition
class Car{
	// Data
	color c;					// Car color.
	float xpos;					// Car x location.
	float ypos;					// Car y location.
	float xspeed;				// Car x speed.

	// Costructor
	Car(color tempC, float tempXpos, float tempYpos, float tempXspeed) { 
	    c = tempC;
	    xpos = tempXpos;
	    ypos = tempYpos;
	    xspeed = tempXspeed;
  	}

	// Functionalities:
	void drive() {
	  xpos = xpos + xspeed;
	  if (xpos > width) {
	    xpos = 0;
	  }
	  if (xpos < 0) {
	    xpos = width;
	  }
	}

	void display(){
		stroke(0);
		fill(c);
	  	rectMode(CENTER);
	  	rect(xpos, ypos, 20, 10);
	} 
}


Car myCar1, myCar2, myCar3, myCar4;


void setup(){
	size(600,400);
	myCar1 = new Car(color(random(255),random(255),random(255)), 0, 50, 3);				// Initialize car object.
	myCar2 = new Car(color(random(255),random(255),random(255)), 0, 150, 5);
	myCar3 = new Car(color(random(255),random(255),random(255)), 600, 250, -3);
	myCar4 = new Car(color(random(255),random(255),random(255)), 600, 350, -5);
}



void draw()  {    
  background(255);					// Fill background.

  fill(0);
  rect(0, 200, 50, 10);
  rect(100, 200, 50, 10);
  rect(200, 200, 50, 10);
  rect(300, 200, 50, 10);
  rect(400, 200, 50, 10);
  rect(500, 200, 50, 10);
  rect(600, 200, 50, 10);

  myCar1.drive();					// Drive car object.   
  myCar1.display();					// Display car object.   
  
  myCar2.drive();		
  myCar2.display();

  myCar3.drive();		
  myCar3.display();

  myCar4.drive();		
  myCar4.display();
}    
