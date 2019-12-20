void setup(){
	size(600,600);
	background(131,250,191);

	frameRate(15);
}

// void draw(){
// 	noStroke();
// 	fill(252,241,115);
	
// 	// ellipse(300, 300, 15, 15);
// 	translate(width/2, height/2);
// 	ellipse(0, 0, 15, 15);
// }


// kind of dropplets, kind of wheels...
// void draw(){

// 	fill(11,13,67, 50);
// 	rect(0, 0, width, height);

// 	stroke(255);
// 	fill(random(7,250),random(7,250),255);
	
// 	// Pick a center:
// 	float x_mid = random(600);
// 	float y_mid = random(600);
// 	translate(x_mid, y_mid);
// 	ellipse(0, 0, 15, 15);

// 	int i = 0;
// 	while(i<10){
// 		float x = random(60);
// 		float y = random(60);
// 		float n = 0;
// 		float nMax = random(100);
// 		while(n<nMax){

// 			rotate(0.09);
// 			ellipse(x, y, 10, 10);

// 			n = n + 1;
// 		}
// 		i = i + 1;
// 	}
// }


// // lake waves
// void draw(){

// 	translate(width/2, height/2);
// 	fill(11,13,67,20);
// 	float miolo = random(10,500);
// 	ellipse(0, 0, miolo, miolo);

// 	float x = random(600);
// 	float y = random(10,600);

// 	fill(random(7,250),random(7,250),255);
// 	stroke(255);
// 	strokeWeight(1);
// 	ellipse(x, y, 10, 10);

// 	float n = 0;
// 	float nMax = random(100);
// 	while(n<nMax){

// 		rotate(0.09);
// 		ellipse(x, y, 10, 10);

// 		n = n + 1;

// 	}

// }



// // a wave kind of simulation
// void draw(){
// 	float x = random(600);
// 	float y = random(100,500);

// 	fill(random(7,250),random(7,250),255);
// 	stroke(255);
// 	strokeWeight(1);
// 	ellipse(x, y, 10, 10);

// 	float n = 0;
// 	float nMax = random(100);
// 	while(n<nMax){

// 		rotate(0.09);
// 		ellipse(x, y, 10, 10);

// 		n = n + 1;

// 	}

// }



// The Generative Flower - still needs some work
// void draw(){

// 	float xLen = 0;
// 	float yLen = 0;

// 	float minX = 100;
// 	float minY = 100;

// 	float maxX = 105;
// 	float maxY = 105;
	
// 	float x = random(100,106);
// 	float y = random(100,106);
// 	point(x, y);

// 	if((x > minX && x < maxX)){
// 		int nx = int(random(0,2));
// 		if(nx==0){
// 			x = minX;
// 			xLen = x - random(50);
// 		}
// 		else{
// 			x = maxX;
// 			xLen = x + random(50);
// 		}
// 		println("nx: "+nx);
// 	}
// 	else{
// 		if(x==minX){xLen = x - random(50);}
// 		else{xLen = x + random(50);}
// 	}

// 	if(y > minY && y < maxY){
// 		int ny = int(random(0,2));
// 		if(ny==0){
// 			y = minY;
// 			yLen = y - random(50);
// 		}
// 		else{
// 			y = maxY;
// 			yLen = y + random(50);
// 		}
// 		println("ny: "+ny);
// 	}
// 	else{
// 		if(y==minY){yLen = y - random(50);}
// 		else{yLen = y + random(50);}
// 	}
	

// 	line(x, y, xLen, yLen);

// }



// // void draw(){

// // 	// float minV = random(100,551);
// // 	// float maxV = minV + 5;

// // 	float xLen = 0;
// // 	float yLen = 0;

// // 	float minX = random(100,551);
// // 	float minY = random(100,551);

// // 	float maxX = minX + 5;
// // 	float maxY = minY + 5;
	
// // 	float x = random(minX,maxX+1);
// // 	float y = random(minY,maxY+1);
// // 	point(x, y);

// // 	if((x > minX && x < maxX)){
// // 		int nx = int(random(0,2));
// // 		if(nx==0){
// // 			x = minX;
// // 			xLen = x - random(50);
// // 		}
// // 		else{
// // 			x = maxX;
// // 			xLen = x + random(50);
// // 		}
// // 		println("nx: "+nx);
// // 	}
// // 	else{
// // 		if(x==minX){xLen = x - random(50);}
// // 		else{xLen = x + random(50);}
// // 	}

// // 	if(y > minY && y < maxY){
// // 		int ny = int(random(0,2));
// // 		if(ny==0){
// // 			y = minY;
// // 			yLen = y - random(50);
// // 		}
// // 		else{
// // 			y = maxY;
// // 			yLen = y + random(50);
// // 		}
// // 		println("ny: "+ny);
// // 	}
// // 	else{
// // 		if(y==minY){yLen = y - random(50);}
// // 		else{yLen = y + random(50);}
// // 	}
	

// // 	line(x, y, xLen, yLen);

// // }