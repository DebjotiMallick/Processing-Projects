int circle1X, circle1Y;
int circle2X, circle2Y;
int rightX, rightY;
int circleSize = 93;
boolean circle1Over = false;
boolean circle2Over = false;
boolean rightOver = false;
boolean wrongOver = false;
int ans, rand;
int totalCount, tableCount, squareCount, cubeCount = 0;
int tableScore, squareScore, cubeScore = 0;

void setup() {
  size(800, 600);
  background(51);
  fill(0, 200, 250);
  noStroke();
  rect(200, 30, 450, 70);
  textSize(40);
  fill(0);
  text("Tables Squares Cubes", 210, 77);
  circle1X = width/2+circleSize/2+200;
  circle1Y = height/2 - 70;
  rightX = width/2+circleSize/2+200;
  rightY = height/2 + 30;
  circle2X = width/2+circleSize/2+200;
  circle2Y = height/2 + 130;
  ellipseMode(CENTER);
  fill(0, 255, 150);
  rect(170, 235, 350, 100);
  fill(0);
  textSize(50);
  text("=", 320, 300);
}

void draw() {
  update(mouseX, mouseY);
  noStroke();
  textSize(36);
  if (totalCount==0) {
    fill(125, 125, 255);
    ellipse(circle2X, circle2Y, circleSize, circleSize);
    fill(0);
    text("Start", circle1X-42, circle1Y + 210);
  } else {
    fill(255, 255, 0);
    ellipse(circle1X, circle1Y, circleSize, circleSize);
    fill(125, 125, 255);
    ellipse(circle2X, circle2Y, circleSize, circleSize);
    fill(0, 255, 0);
    ellipse(rightX, rightY, circleSize, circleSize);
    fill(0);
    text("Ans", circle1X-33, circle1Y+10);
    text("Right", circle1X-45, circle1Y+110);
    text("Next", circle1X-42, circle1Y + 210);
  }
  fill(255);
  rect(300, 450, 210, 80);
  fill(0);
  text("Count : "+totalCount, 310, 500);
}

void newNumber() {
  fill(0, 255, 150);
  rect(170, 235, 350, 100);
  fill(0);
  textSize(50);
  text("x", 245, 297);
  text("=", 320, 300);
  int num1 = int(random(12, 26));
  int num2 = int(random(3, 10));
  ans = num1 * num2;
  textSize(48);
  text(num1, 180, 300);
  text(num2, 285, 300);
  tableCount++;
  totalCount++;
}

void newSquare() {
  fill(0, 255, 150);
  rect(170, 235, 350, 100);
  fill(0);
  textSize(50);
  text("=", 320, 300);
  int num1 = int(random(11, 31));
  ans = num1 * num1;
  textSize(48);
  text(num1, 220, 300);
  textSize(30);
  text('2', 275, 270);
  squareCount++;
  totalCount++;
}

void newCube() {
  fill(0, 255, 150);
  rect(170, 235, 350, 100);
  fill(0);
  textSize(50);
  text("=", 320, 300);
  int num1 = int(random(6, 21));
  ans = num1 * num1 * num1;
  textSize(48);
  text(num1, 220, 300);
  textSize(30);
  text('3', 275, 270);
  cubeCount++;
  totalCount++;
}

void printResult() {
  fill(0, 255, 150);
  rect(170, 125, 500, 100);
  rect(170, 235, 500, 100);
  rect(170, 345, 500, 100);
  fill(0);
  textSize(40);
  text("Score in tables : " +tableScore + "/" + tableCount, 190, 175);
  text("Score in squares : " +squareScore + "/" + squareCount, 190, 285);
  text("Score in cubes : " +cubeScore + "/" + cubeCount, 190, 395);
}

void mousePressed() {
  if (circle1Over) {
    textSize(50);
    fill(0);
    text(ans, 360, 300);
  }
  if (rightOver) {
    if (rand<=5) {
      tableScore++;
    } else if (rand<=8 && rand>=6) {
      squareScore++;
    } else {
      cubeScore++;
    }
  }
  if (circle2Over) {
    if (totalCount<=98) {
      rand = int(random(1, 11));
      if (rand<=5) {
        newNumber();
      } else if (rand<=8 && rand>=6) {
        newSquare();
      } else {
        newCube();
      }
    } else {
      clear();
      noLoop();
      background(random(120), random(50), random(150));
      printResult();
    }
  }
}
