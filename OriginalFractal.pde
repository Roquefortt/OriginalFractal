public void setup()
{
	size(500, 500);
	//strokeWeight(3);
	//fill(108, 162, 153);
	//noStroke();
	noFill();
}

public void draw()
{
	background(205);
	myFractal(100, 100, 1000);
}

public void myFractal(int x, int y, int siz)
{
	stroke((int)(Math.random()*50)+146,(int)(Math.random()*50)+146,(int)(Math.random()*50)+146);
	ellipse(x, y, siz/3, siz/3);
	if(siz >= 10)
	{
		//color	
		myFractal(x+((int)(Math.random()*20)), y+((int)(Math.random()*20)), siz-30);

		pushMatrix();
		translate(x-((int)(Math.random()*30)),y);
		myFractal(x, y-((int)(Math.random()*20)), siz/2);
		popMatrix();

/*
		fill((int)(Math.random()*50)+146,(int)(Math.random()*50)+146,(int)(Math.random()*50)+146);	
		myFractal(x+((int)(Math.random()*20)), y+((int)(Math.random()*20)), siz-30);
		myFractal(x-((int)(Math.random()*20)), y-((int)(Math.random()*20)), siz/2);
*/
		noLoop();
	}
	else
	{
		ellipse(x, y, siz/2, siz/2);
	}
}
