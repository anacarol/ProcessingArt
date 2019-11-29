// size(700,400);
// background(255);

// textSize(160);
// fill(232,222,10);
// // text("hello",10,240);
// text("Bom Dia",20,240);

// textSize(80);
// text("flor do dia", 150, 320);


void setup() {
  size(700, 400);
  background(255);
}

void draw() {
  fill(0, 20);
  rect(0,0,width, height);
    
}

void keyPressed() {
//   fill(#FFE200);
//   textSize(random(20, 200));
//   text(key, random(300), random(100,400));

    textSize(random(10,160));
    fill(232,222,10);
    text(key,random(width),random(160,height));
    
    // textSize(80);
    // text("flor do dia", 150, 320);

}



