public void setup() {
  size(800,600); 

}

public void draw() {
   stroke((int)(Math.random()*254) + 1,(int)(Math.random()*254) + 1,(int)(Math.random()*254) + 1);
   fractal(400,300,800);
}


public void fractal(int x, int y, int len) 
{
  if(len <= 1) {
    ellipse(x,y,len,len); 
  }
  else {

    fractal(x,y, len/2);
    fractal(x + len/4,y,len/4);
    fractal(x - len/4,y,len/4);
    fractal(x,y + len/4,len/4);
    fractal(x,y - len/4,len/4);
  }
}
    
 
