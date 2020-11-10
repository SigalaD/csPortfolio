
var startX=0;
var startY=140;
var endX=0;
var endY=140;
var clicks=0;
function setup() {
  var canvas=createCanvas(500, 500);
  background(0,0,200)
  
	fill(0,200,0);
	rect(0,350,500,500);
	fill(87,65,45)
	rect(250,200,50,150);
	fill(0,200,0);
	ellipse(275,150,250,250);
  fill(0);
   textSize(20);
  text("Click to add lightning, refresh page to restart",90,50);
	strokeWeight(15);
  
}

function draw()
 {

    stroke((random(190,255)), (random(100,200)), 0);
	  while(endX<500)
	  {
		endX=startX + random(0,9);
		endY=endY+ random(-9,9);
		line(startX,startY,endX,endY);
		startX=endX;
		startY=endY;
	  }


}
function mousePressed() 
  {
	startX=0;
	startY=150;
	endX=0;
	endY=150;

  }
