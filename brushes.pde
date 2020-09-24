void parallelLines(float minimumSpacing, float maximumSpacing) {
  float startingX;
  float startingY = random(1, height - 1);
  
  float angle = random(0, 360);
  float widthBetweenLines = random(minimumSpacing, maximumSpacing);
  if (angle > 90 && angle < 270) { //facing left
    startingX = width - 1;
  } else { // facing right
    startingX = 1;
  }
 
  Turtle t1 = new Turtle(startingX, 200, #0000ff);
  t1.turn(angle);
  t1.forward(t1.distanceToEdge(), true);
  ellipse(t1.x, t1.y, 10, 10);
  
  Turtle t2 = new Turtle(startingX, 200 + widthBetweenLines, #0000ff);
  t2.turn(angle);
  t2.forward(t2.distanceToEdge(), true);
  ellipse(t2.x, t2.y, 10, 10);
}
