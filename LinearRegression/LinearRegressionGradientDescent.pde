ArrayList<Vector> vec=new ArrayList<Vector>();

float m=0;
float b=0;
float gradient_of_m=0;
float gradient_of_b=0;
float learning_rate=0.01;
void setup() {
  size(400, 400);
  background(0);
}

void mousePressed() {
  float xaxis=mouseX;
  float yaxis=mouseY;
  xaxis=map(xaxis, 0, width, 0, 1);
  yaxis =map(yaxis, height, 0, 0, 1);
  vec.add(new Vector(xaxis, yaxis));
}

void gradientDescent(){
  
  //for(Vector v:vec){
  //  float x=v.x;
  //  float y=v.y;
    
  //  gradient_of_m=(-2)*(x)*(y-(m*x+b));
  //  gradient_of_b=(-2)*(y-(m*x+b));
    
    
  //}                                                    The normal gradient descent way
  
  //float stepSize_m=learning_rate*gradient_of_m;
  //float stepSize_b=learning_rate*gradient_of_b;
  
  //m=m-stepSize_m;
  //b=b-stepSize_b;
  
  //gradient_of_m=0;
  //gradient_of_b=0;
  
  
  
  
  
  
  //for(Vector v:vec){
  //  float x=v.x;
  //  float y=v.y;
  //  float error=y-(m*x+b);                    The error way where we add all the gradient part inside the parameteres
    
  //  m=m-learning_rate*error*x*(-2);
  //  b=b-learning_rate*error*(-2);
    
  
  //}
  
  
}





void drawLine() {
  float x1=0;
  float x2=1;
  float y1=map(b,0,1,height,0);
  float y2=map(m*x2+b,0,1,height,0);
  stroke(255);
  strokeWeight(2);
  line(0,y1,width,y2);


}



void draw() {
  background(0);
  fill(255);
  stroke(255);
  strokeWeight(2);
  for (Vector v : vec) {
    float xaxis=map(v.x, 0, 1, 0, width);
    float yaxis=map(v.y, 0, 1, height, 0);
    ellipse(xaxis, yaxis, 7, 7);
  }
  
  gradientDescent();
  drawLine();
}
