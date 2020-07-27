// shapes
// allow for different shapes
// allow for different offsets from center
// allow for different sizes
// allow for different rotations /✅

import processing.svg.*;

void setup() {
  size(600, 600);
  noLoop();
  beginRecord(SVG, "out.svg");
}

void draw() {
  //blue //#0000ff
  Turtle t1 = new Turtle(0, 100);
  t1.turn(35);
  t1.forward(1000);
  
  Turtle t2 = new Turtle(0, 130);
  t2.turn(35);
  t2.forward(1000);
  
  //Turtle t3 = new Turtle(width, 100, #ff0000);
  //t3.turn(140);
  //t3.forward(3000);
  
  //Turtle t4 = new Turtle(width, 18, #ff0000);
  //t4.turn(140);
  //t4.forward(3000);
  
  //red //#ff0000
  Turtle t5 = new Turtle(0, 300);
  t5.turn(0);
  t5.forward(250);
  float m1x = t5.x;
  float m1y = t5.y;
  t5.forward(3000);
  
  Turtle t6 = new Turtle(0, 370);
  t6.turn(0);
  t6.forward(300);
  float m2x = t6.x;
  float m2y = t6.y;
  t6.forward(300);
  
  //green //#00ff00
  Turtle t7 = new Turtle(m1x, m1y);
  t7.turn(300);
  t7.forward(3000);
  
  Turtle t8 = new Turtle(m2x, m2y);
  t8.turn(300);
  t8.forward(3000);
  
  Turtle t8_2 = new Turtle(m2x, m2y);
  t8_2.turn(t8.angle + 180);
  t8_2.forward(3000);
  
  //purple //#ff00ff
  Turtle t9 = new Turtle(m1x, m1y);
  t9.turn(160);
  t9.forward(3000);
  
  Turtle t10 = new Turtle(width, 220);
  t10.turn(160);
  t10.forward(3000);
  
  stroke(0);
  noFill();
  translate(width/2, height/2);
  rotate(radians(random(0, 360)));
  ellipse(0, 0, 300, 300);
  //rect(0-150, 0-150, 300, 300);
  
  endRecord();
}
