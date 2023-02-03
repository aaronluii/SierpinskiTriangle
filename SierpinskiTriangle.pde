public void setup()
{
size(1000,1000);
}
public void draw()
{
  background(#3AC400);
sierpinski(100,800,800);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
fill(#DE102B);
if(len <= 20) {
  triangle(x, y, x + len, y, x + len/2, y-len);
  }
 else  {
   sierpinski(x, y, len/2);
   sierpinski(x + len/2, y, len/2);
   sierpinski(x + len/4, y-len/2, len/2);
 }
}
