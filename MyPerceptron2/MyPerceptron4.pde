Perceptron perceptron=new Perceptron(3);
Point pts[]=new Point[300];
int trainingIndex=0;

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
  Point p1=new Point(-10, lineEquation(-10));
  Point p2=new Point(10, lineEquation(10));
  line(p1.pixelspaceX(), p1.pixelspaceY(), p2.pixelspaceX(), p2.pixelspaceY());

  Point p3=new Point(-10, perceptron.guessY(-10));
  Point p4=new Point(10, perceptron.guessY(10));
  line(p3.pixelspaceX(), p3.pixelspaceY(), p4.pixelspaceX(), p4.pixelspaceY());

  noStroke();


  for (Point p : pts) {
    float[] input={p.x, p.y, p.bias};
    int guess=perceptron.guess(input);
    int target=p.label;
    if (guess==target) {
      fill(0, 255, 0);
    } else {
      fill(255, 0, 0);
    }  
    ellipse(p.pixelspaceX(), p.pixelspaceY(), 8, 8);
  }
  
  Point pt=pts[trainingIndex];
    float[] input={pt.x, pt.y, pt.bias};
    int target=pt.label;
    perceptron.train(input, target);
  trainingIndex++;
  if(trainingIndex>=pts.length)
    trainingIndex=0;
}
//====================================
float lineEquation(float x) {
  return 3*x+2;
}
//==================================== 
void mousePressed() {
  for (Point p : pts) {

  }
}
