public void setup()
{
	size(500, 500);
}

public void draw()
{
	background(205);
	myFractal(250, 250, 1000);
}

public void mouseClicked()
{
	redraw();
}

public void myFractal(int x, int y, int siz)
{
	stroke(225);
	fill((int)(Math.random()*50)+146, (int)(Math.random()*50)+146, (int)(Math.random()*50)+146, (int)(Math.random()*200));
	ellipse(x, y, siz, siz);
	rect(x, y, siz/2, siz/2);
	triangle(x-siz/2,y+siz/2,x+siz/2,y+siz/2,x,y-siz/2);

	if(siz >= 10)
	{
		pushMatrix();
		translate(x-siz/6,y);
		rotate(-PI/2);
		myFractal(0,0,siz/2);
		popMatrix();

		pushMatrix();
		translate(x+siz/6,y);
		rotate(PI/2);
		myFractal(0,0,siz/2);
		popMatrix();

		noLoop();
	}

	else
	{
		ellipse(x, y, siz/2, siz/2);
	}
}
