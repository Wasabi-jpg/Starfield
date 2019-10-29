//your code here
void setup()
{
	//your code here
	size(500,500);
}
void draw()
{
	//your code here
}
class Particle
{
	//your code here
	double x, y, angle, speed;
	int Color;
	Particle(){
		x=250;
		y=250;
		angle = Math.random()*2*Math.PI;
		speed = (int)(Math.random()*10)+1;

	}
}

class OddballParticle //inherits from Particle
{
	//your code here
}


