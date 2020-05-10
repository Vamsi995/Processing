class Point {
  float x;
  float y;
  int label;


  //====================================  
  Point() {
    x=random(width);
    y=random(height);

    if (x>y)
      label=1;
    else 
    label=-1;
  }
  //==================================== 

  void show() {
    if (label==1)
    {
      fill(0);
      stroke(255);
    } else
    {
      fill(255);
      stroke(255);
    }

    ellipse(x, y, 16, 16);
  }
  //====================================
}
