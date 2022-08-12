void update(int x, int y) {
  if (overCircle(circle1X, circle1Y, circleSize) ) {
    circle1Over = true;
  } else if (overCircle(circle2X, circle2Y, circleSize) ) {
    circle2Over = true;
  } else {
    circle1Over = circle2Over = false;
  }
}
