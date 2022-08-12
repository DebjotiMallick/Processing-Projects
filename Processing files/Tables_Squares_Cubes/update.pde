void update(int x, int y) {
  if (overCircle(circle1X, circle1Y, circleSize) ) {
    circle1Over = true;
    circle2Over = rightOver = false;
  } else if (overCircle(circle2X, circle2Y, circleSize) ) {
    circle2Over = true;
    circle1Over = rightOver = false;
  } else if (overCircle(rightX, rightY, circleSize) ) {
    rightOver = circle2Over = true;
    circle1Over = false;
  } else {
    circle1Over = circle2Over = rightOver = false;
  }
}
