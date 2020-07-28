class Turtle {

  float x;
  float y;
  float xBorn;
  float yBorn;
  float xIntersect;
  float yIntersect;
  float angle;
  color colour;

  Turtle(float _x, float _y, color _c) {
    x = _x;
    y = _y;
    xBorn = _x;
    yBorn = _y;
    colour = _c;
  }
  
  Turtle(float _x, float _y) {
    x = _x;
    y = _y;
    colour = #000000;
  }  

  void forward(float distance, boolean pen) {
    float newX = x + cos(radians(angle)) * distance;
    float newY = y + sin(radians(angle)) * distance;
    
    if (pen) {
      stroke(colour);
      line(x, y, newX, newY);
    }
    
    x = newX;
    y = newY;
  }
  
  void turn(float degrees) {
    angle += degrees;
  }
  
  float distanceToEdge() {
    PVector edgeIntersectCoordinates = edgeIntersectCoordinates();
    return dist(x, y, edgeIntersectCoordinates.x, edgeIntersectCoordinates.y);
  }
  
  PVector edgeIntersectCoordinates() {
    if ((x > 0 && x < width) && (y > 0 && y < height)) {
      forward(1, false);
      edgeIntersectCoordinates();
    } else {
      xIntersect = constrain(x, 0, width);
      yIntersect = constrain(y, 0, height);
      x = xBorn;
      y = yBorn;
    }
    return new PVector(xIntersect, yIntersect);
  }
}
