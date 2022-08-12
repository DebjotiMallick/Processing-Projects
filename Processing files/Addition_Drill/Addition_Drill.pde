int circle1X, circle1Y;
int circle2X, circle2Y;
int circleSize = 93;
boolean circle1Over = false;
boolean circle2Over = false;
int sum;
int count = 0;

void setup() {
  size(800, 600);
  background(51);
  fill(255, 0, 150);
  noStroke();
  rect(300, 30, 200, 70);
  textSize(40);
  fill(0);
  text("Addition", 315, 77);
  circle1X = width/2+circleSize/2+200;
  circle1Y = height/2 - 70;
  circle2X = width/2+circleSize/2+200;
  circle2Y = height/2 + 50;
  ellipseMode(CENTER);
  fill(255, 0, 255);
  rect(150, 200, 300, 200);
  fill(0);
  stroke(0);
  strokeWeight(4);
  line(160, 320, 400, 320);
  textSize(50);
  text("+", 160, 300);
}

void draw() {
  update(mouseX, mouseY);
  noStroke();
  fill(0, 255, 0);
  ellipse(circle1X, circle1Y, circleSize, circleSize);
  ellipse(circle2X, circle2Y, circleSize, circleSize);
  fill(0);
  textSize(36);
  text("Sum", circle1X-37, circle1Y+10);
  text("Next", circle1X-42, circle1Y + 130);
  fill(100);
  rect(300, 450, 200, 80);
  fill(255);
  text("Count : "+count, 310, 500);
}

void newNumber() {
  if (count<=49) {
    fill(255, 0, 255);
    rect(150, 200, 300, 200);
    fill(0);
    stroke(0);
    strokeWeight(4);
    line(160, 320, 400, 320);
    textSize(50);
    text("+", 160, 300);
    int num1 = int(random(10000, 99999));
    int num2 = int(random(10000, 99999));
    sum = num1 + num2;
    textSize(60);
    text(num1, 200, 260);
    text(num2, 200, 310);
    count++;
  } else {
    fill(255, 0, 255);
    rect(150, 200, 300, 200);
    fill(0);
    textSize(50);
    text("GREAT JOB", 170, 320);
  }
}

void mousePressed() {
  if (circle1Over) {
    textSize(60);
    fill(0);
    text(sum, 200, 380);
  }
  if (circle2Over) {
    newNumber();
  }
}
