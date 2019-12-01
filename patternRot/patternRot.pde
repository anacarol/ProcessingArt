size(400, 300);
background(38,232,21);
noStroke();

// smooth();

// rotate(0.5);
// rect(10, 10, width-20, height-20);

// rotate(0.2);
// rect(10, 10, width-20, 20);

float c = 0;
while(c<100){
    fill(random(255));
    // rect(10, 10, width-20, 20);
    rect(200, 10, 50, 5);

    fill(255, 0, 0);
    rect(260, 10, 10, 5);
    rect(180, 10, 10, 5);

    fill(0, 0, 255);
    ellipse(280, 10, 10, 10);
    ellipse(160, 10, 10, 10);

    c = c + 1;
    
    rotate(0.03);
}