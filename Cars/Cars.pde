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
	  	// rectMode(CENTER);
	  	rect(xpos, ypos, 20, 10);
	} 
}

class Person{
	// Data
	color c;					// Car color.
	float xpos;					// Car x location.
	float ypos;					// Car y location.
	float xspeed;				// Car x speed.

	// Costructor
	Person(color tempC, float tempXpos, float tempYpos, float tempXspeed) { 
	    c = tempC;
	    xpos = tempXpos;
	    ypos = tempYpos;
	    xspeed = tempXspeed;
  	}

	// Functionalities:
	void walk() {
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
	  	ellipse(xpos, ypos, 10, 10);
	} 
}


Car myCar1, myCar2, myCar3, myCar4, myCar5, myCar6;
Person people1, people2, people3, people4, people5;


void setup(){
	size(600,400);

	people1 = new Person(color(random(255),random(255),random(255)), 0, 15, 0.5);
	people2 = new Person(color(random(255),random(255),random(255)), 0, 25, 0.5);
	people3 = new Person(color(random(255),random(255),random(255)), 0, 90, -0.7);

	myCar1 = new Car(color(random(255),random(255),random(255)), 0, 105, 3);				// Initialize car object.
	myCar2 = new Car(color(random(255),random(255),random(255)), 0, 130, 5);
	myCar3 = new Car(color(random(255),random(255),random(255)), 0, 155, 6);


	myCar4 = new Car(color(random(255),random(255),random(255)), 600, 245, -6);
	myCar5 = new Car(color(random(255),random(255),random(255)), 600, 260, -5);
	myCar6 = new Car(color(random(255),random(255),random(255)), 600, 285, -3);

	people4 = new Person(color(random(255),random(255),random(255)), 0, 310, 0.5);
	people5 = new Person(color(random(255),random(255),random(255)), 0, 320, 0.5);
}



void draw()  {    
  background(0);					// Fill background.

  fill(50);
  rect(0, 0, 600, 100);
  rect(0, 300, 600, 100);

  fill(255);
  rect(0, 200, 50, 10);
  rect(100, 200, 50, 10);
  rect(200, 200, 50, 10);
  rect(300, 200, 50, 10);
  rect(400, 200, 50, 10);
  rect(500, 200, 50, 10);
  rect(600, 200, 50, 10);


  fill(94,131,60);
  noStroke();

  ellipse(50, 50, 30, 30);
  ellipse(50, 70, 30, 30);
  ellipse(65, 55, 30, 30);

  ellipse(150, 350, 30, 30);
  ellipse(150, 370, 30, 30);
  ellipse(165, 355, 30, 30);

  ellipse(250, 50, 30, 30);
  ellipse(250, 70, 30, 30);
  ellipse(265, 55, 30, 30);

  ellipse(350, 350, 30, 30);
  ellipse(350, 370, 30, 30);
  ellipse(365, 355, 30, 30);

  ellipse(450, 50, 30, 30);
  ellipse(450, 70, 30, 30);
  ellipse(465, 55, 30, 30);

  ellipse(550, 350, 30, 30);
  ellipse(550, 370, 30, 30);
  ellipse(565, 355, 30, 30);


  people1.walk();
  people1.display();
  people2.walk();
  people2.display();
  people3.walk();
  people3.display();

  myCar1.drive();					// Drive car object.   
  myCar1.display();					// Display car object.   
  
  myCar2.drive();		
  myCar2.display();

  myCar3.drive();		
  myCar3.display();

  myCar4.drive();		
  myCar4.display();

  myCar5.drive();		
  myCar5.display();

  myCar6.drive();		
  myCar6.display();

  people4.walk();
  people4.display();
  people5.walk();
  people5.display();

}    
