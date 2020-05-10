class Star
{
  float x;
  float y;
  float z;
  float sx, sy;
  float pz;
  Star()
  {
    x=random(-width, width);
    y=random(-height, height);
    z=random(width);
    pz=z;
  } 
  void update()
  {
    z=z-speed;
    
    if (z<=1)
    {
      z=width;
      x=random(-width, width);
      y=random(-height, height);
      pz=z;
    }
  }
  void show()
  {

    sx=map(x/z, 0, 1, 0, width); //New positions of the ellipse  
    sy=map(y/z, 0, 1, 0, width);


    float r=map(z, 0, width, 16, 0);  
    fill(mouseX,z,mouseY); //color    
    ellipse(sx, sy, r, r);

    float px=map(x/pz, 0, 1, 0, width);
    float py=map(y/pz, 0, 1, 0, height);

    pz=z;    //Assinging the previous value of z to pz
    stroke(255);
    line(px, py, sx, sy);//Connecting the previous poistion of the ellipse to the new position
  }
}
