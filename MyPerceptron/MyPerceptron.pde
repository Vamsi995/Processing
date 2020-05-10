Perceptron perceptron=new Perceptron();
Point pts[]=new Point[300];

//==================================== 
void setup() {
  size(800, 800);
  for (int i=0; i<pts.length; i++) {
    pts[i]=new Point();
  }
}
//==================================== 

void draw() {
  background(0);
  //for (Point p : pts)
  //  p.show();
  stroke(255);
  line(0, 0, width, height);
  noStroke();
   for (Point p : pts) {
    float[] input={p.x, p.y};
    int guess=perceptron.guess(input);
    int target=p.label;
    if (guess==target) {
      fill(0, 255, 0);
    } else {
      fill(255, 0, 0);
    }  
    ellipse(p.x, p.y, 8, 8);
  }
}
//==================================== 
void mousePressed() {
  for (Point p : pts) {
    float[] input={p.x, p.y};
    int target=p.label;
    perceptron.train(input, target);
  }
}
