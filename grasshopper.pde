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
  Turtle t1 = new Turtle(1, 100, #0000ff);
  t1.turn(35);
  t1.forward(t1.distanceToEdge(), true);
  
  Turtle t2 = new Turtle(1, 130, #0000ff);
  t2.turn(35);
  t2.forward(t2.distanceToEdge(), true);
  
  //Turtle t3 = new Turtle(width, 100, #ff0000);
  //t3.turn(140);
  //t3.forward(3000, true);
  
  //Turtle t4 = new Turtle(width, 18, #ff0000);
  //t4.turn(140);
  //t4.forward(3000, true);
  
  //red //#ff0000
  Turtle t5 = new Turtle(0, 300, #ff0000);
  t5.turn(0);
  t5.forward(250, true);
  float m1x = t5.x;
  float m1y = t5.y;
  t5.forward(t5.distanceToEdge(), true);
  
  Turtle t6 = new Turtle(0, 370, #ff0000);
  t6.turn(0);
  t6.forward(300, true);
  float m2x = t6.x;
  float m2y = t6.y;
  t6.forward(t6.distanceToEdge(), true);
  
  //green //#00ff00
  Turtle t7 = new Turtle(m1x, m1y, #00ff00);
  t7.turn(300);
  t7.forward(t7.distanceToEdge(), true);
  
  //Turtle t7_2 = new Turtle(m1x, m1y, #00ff00);
  //t7_2.turn(t7.angle + 180);
  //t7_2.forward(t7_2.distanceToEdge(), true);
  
  Turtle t8 = new Turtle(m2x, m2y, #00ff00);
  t8.turn(300);
  t8.forward(t8.distanceToEdge(), true);
  
  Turtle t8_2 = new Turtle(m2x, m2y, #00ff00);
  t8_2.turn(t8.angle + 180);
  t8_2.forward(t8_2.distanceToEdge(), true);
  
  //purple //#ff00ff
  Turtle t9 = new Turtle(m1x, m1y, #ff00ff); //<>//
  t9.turn(160); //<>//
  t9.forward(t9.distanceToEdge(), true);
   //<>//
  Turtle t10 = new Turtle(width-1, 220, #ff00ff);
  t10.turn(160);
  t10.forward(t10.distanceToEdge(), true);
  
  stroke(0);
  noFill();
  translate(width/2, height/2);
  rotate(radians(random(0, 360)));
  ellipse(0, 0, 300, 300);
  //rect(0-150, 0-150, 300, 300);
  
  endRecord();
}
