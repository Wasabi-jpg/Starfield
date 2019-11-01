//your code here
Particle [] one;

void setup()
{
	//your code here
	
	size(500,500);
	one = new Particle[1000];
	for(int i=0; i<one.length; i++){
		one[i] = new Particle();
		one[0] = new OddballParticle();
	}
}
void draw()
{
	fill(0,0,0,25);
	rect(0,0,500,500);
	//your code here
	for(int i = 0; i<one.length; i++){
		one[i].move();
		one[i].show();
	}
	
}


class Particle
{
	//your code here
	double x, y, angle, speed;
	int theColor;
	Particle(){
		x=250;
		y=250;
		angle = Math.random()*(2*Math.PI);
		speed = (Math.random()*5)+1;
		theColor= 255;


	}
	void move(){
		x = Math.cos(angle)*speed +x;
		y = Math.sin(angle)*speed +y;
		if(x < 0 || x > 500){
			if(y<0||y>500){
				x = 250;
				y =250;
				angle = Math.random()*(2*Math.PI);
				speed = (Math.random()*7)+1;
			}
		}
	}
	void show(){
		fill(theColor);
		ellipse((float)x,(float)y,5,5);

	}
}

class OddballParticle extends Particle //inherits from Particle
{
	OddballParticle(){
		x = 250;
		y = 250;
		angle = 0;
		speed = (Math.random()*3)-1;
		theColor = 77;
		}//your code here
		void move(){
			x = ((int)(Math.random()*3)-1) + x;
			y = ((int)(Math.random()*3)-1) + y;

		}
		void show(){
			fill(theColor,0,0);
			ellipse((float)x,(float)y,15,15);
		}
}


