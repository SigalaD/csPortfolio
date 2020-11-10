function setup()
{
    noLoop();
}
function draw()
{
	createCanvas(500,500);
    background(0,0,0);
		die = new Die(60,60);
		die.show();
}
function mousePressed()
{
    redraw();
}
class Die //models one single dice cube
{
	 
    Die( x,y) //constructor
    {
       this.Roll=0;
      this.total=0;//variable initializations here
    }
    roll()
    {
			this.Roll= (int)(Math.random() *7);
			if(this.Roll==0)
			{
				this.Roll+=1;
			}
    }
    show()
    {
			die.roll();
		this.total=this.Roll*16;
		for(var y = 10 ; y <= 500 ; y +=130 )
		{
  		for( var x = 20 ; x <= 500 ; x +=130)
 			 {
   			 fill(255);
        	rect(x,y,60,60);
				if(this.Roll==1)
					{
						fill(20,20,20);
						ellipse(x+30,y+30,5,5);
					}
				if(this.Roll==2)
					{
						fill(20,20,20);
						ellipse(x+15,y+15,5,5);
					fill(20,20,20);
						ellipse(x+43,y+45,5,5);
					}
				if(this.Roll==3)
					{
						fill(20,20,20);
						ellipse(x+15,y+15,5,5);
						fill(20,20,20);
						ellipse(x+43,y+45,5,5);
					fill(20,20,20);
						ellipse(x+30,y+30,5,5);
					}
				if(this.Roll==4)
					{
						fill(20,20,20);
						ellipse(x+15,y+15,5,5);
						fill(20,20,20);
						ellipse(x+45,y+15,5,5);
						fill(20,20,20);
						ellipse(x+15,y+45,5,5);
						fill(20,20,20);
						ellipse(x+45,y+45,5,5);
					}
			if(this.Roll==5)
					{
						fill(20,20,20);
						ellipse(x+15,y+15,5,5);
						fill(20,20,20);
						ellipse(x+45,y+15,5,5);
						fill(20,20,20);
						ellipse(x+15,y+45,5,5);
						fill(20,20,20);
						ellipse(x+45,y+45,5,5);
						fill(20,20,20);
						ellipse(x+30,y+30,5,5);
					}
				if(this.Roll==6)
					{
						fill(20,20,20);
						ellipse(x+15,y+15,5,5);
						fill(20,20,20);
						ellipse(x+45,y+15,5,5);
						fill(20,20,20);
						ellipse(x+15,y+45,5,5);
						fill(20,20,20);
						ellipse(x+45,y+45,5,5);
						fill(20,20,20);
						ellipse(x+15,y+30,5,5);
						fill(20,20,20);
						ellipse(x+45,y+30,5,5);

					}
				textSize(30);
				fill(255);
				text("Total Roll:"+this.total,300,250);
  			}
		}

				
			
    }
}