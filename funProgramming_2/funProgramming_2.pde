void setup() {
    size(600,600);
    
    colorMode(HSB);
    background(random(255), random(50,100), random(50,100));
    // background(0);

}

void draw() {

    noFill();
    stroke(255,100);

    int i = 0;
    while (i < 50) {
        // fill(255);
        ellipse(width/2, height/2, 100+i*3, 100+i*3);

        // fill(245,235,30);
        ellipse(width/2, height/2, 100+i, 100-i*2);
        i = i + 2;
    }
    
}
