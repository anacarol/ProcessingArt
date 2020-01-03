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
	Car(){
		c = color(255);
		xpos = width/2;
		ypos = height/2;
		xspeed = 1;
	}

	// Functionalities:
	void drive() {
	  xpos = xpos + xspeed;
	  if (xpos > width) {
	    xpos = 0;
	  }
	}

	void display() {
	  fill(c);
	  rectMode(CENTER);
	  rect(xpos, ypos, 20, 10);
	}  
}


Car myCar;


void setup(){
	size(200,200);
	myCar = new Car();				// Initialize car object.
}



void draw()  {    
  background(255);					// Fill background.
  myCar.drive();					// Drive car object.   
  myCar.display();					// Display car object.   
}    
