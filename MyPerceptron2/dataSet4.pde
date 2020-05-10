class Point {
  float x;
  float y;
  int label;
  float bias=1;


  //==================================== 

  //The end points in our space for drawing the classifying line
  Point(float x, float y) {
    this.x=x;
    this.y=y;
  }
  //====================================  
  Point() {
    x=random(-10, 10);
    y=random(-10, 10);    

    if (3*x+2>y)
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

    ellipse(pixelspaceX(), pixelspaceY(), 8, 8);
  }
  //====================================

  //Converting real space to pixel space
  float pixelspaceX() {
    return map(x, -10, 10, 0, width);
  }

  float pixelspaceY() {
    return map(y, -10, 10, height, 0);
  }
  //====================================
}
