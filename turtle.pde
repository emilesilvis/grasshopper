class Turtle {

  float x;
  float y;
  float angle;
  color colour;

  Turtle(float _x, float _y, color _c) {
    x = _x;
    y = _y;
    colour = _c;
  }
  
  Turtle(float _x, float _y) {
    x = _x;
    y = _y;
    colour = #000000;
  }  

  void forward(float distance) {
    float newX = x + cos(radians(angle)) * distance;
    float newY = y + sin(radians(angle)) * distance;

    stroke(colour);
    
    line(x, y, newX, newY);

    x = newX;
    y = newY;
  }
  
  void turn(float degrees) {
    angle += degrees;
  }
}
