void setup() {
    size(640,600);
    
    background(0);

    frameRate(15);

}

void draw() {

    // fill(0,10);
    // noStroke();
    // rect(0, 0, width, height);

    int n = int(random(3));

    if(n==0){
        noFill();
        stroke(255);    
    }
    if(n==1){
        fill(random(255),0,random(255));
        noStroke();
    }
    if(n==2){
        fill(0,random(255),random(255));
        noStroke();    
    }

    triangle(400, 200, 450, 200, 425, 300);
    triangle(400, 200, 425, 300, 350, 235);
    triangle(350, 235, 425, 300, 330, 275);

    triangle(330, 275, 415, 330, 340, 340);
    triangle(415, 330, 340, 340, 375, 400);


    noStroke();
    fill(255);
    triangle(330, 275, 310, 275, 320, 245);
    triangle(330, 275, 310, 275, 320, 320);


    if(n==0){
        noFill();
        stroke(255);    
    }
    if(n==1){
        fill(random(255),0,random(255));
        noStroke();  
    }
    if(n==2){
        fill(0,random(255),random(255));
        noStroke();    
    }
    
    triangle(290, 235, 205, 300, 310, 275);
    triangle(290, 235, 205, 300, 240, 200);
    triangle(240, 200, 205, 300, 190, 200);

    triangle(310, 275, 225, 330, 300, 340);
    triangle(225, 330, 300, 340, 260, 400);

    

    
}


void keyPressed() {
    if (key == 's') {
        save("butterfly.jpg");
    }
}

