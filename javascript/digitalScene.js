function setup() {
  var canvas=createCanvas(500, 500);  
  background(200);
  text("ACSCompSciPandemic2020 Devon Sigala", 100, 15);
}

function draw() {
  fill(0, 0, 200);
  rect(90, 250, 200, 200);
  fill(0, 200, 50);
  triangle(90, 250, 185, 150, 292, 250);
  fill(255);
  ellipse(45, 425, 65, 65);
  ellipse(45, 385, 50, 50);
  ellipse(45, 355, 35, 35);
  fill(250, 250, 0);
  ellipse(40, 40, 65, 65);
  fill(139, 69, 19);
  rect(175, 390, 35, 60);
  line(90, 250, 190, 305);
  line(290, 250, 190, 305);
}