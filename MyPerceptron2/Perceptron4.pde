class Perceptron {
  float weights[];
  float learning_rate=0.015;  

  //==================================== 
  Perceptron(int n) {
    weights=new float[n];
    //Initialising the weights
    for (int i=0; i<weights.length; i++) {
      weights[i]=random(-1, 1);
    }
  }
  //==================================

  //Method which finds the weighted sum and passes it to the activation function and returns the output
  int guess(float[] input) {
    float sum=0;
    for (int i=0; i<weights.length; i++) {
      sum+=weights[i]*input[i];
    }
    int output = signum(sum);
    return output;
  }
  //==================================== 

  //The activation function
  int signum(float sum) {
    if (sum<0)
      return -1;
    return 1;
  }
  //==================================== 

  //Training method optimises the weights using the gradient descent method
  void train(float[] input, int target) {
    int guess=guess(input);
    int ans=target;
    int error=ans-guess;
    for (int i=0; i<weights.length; i++) {
      weights[i]-=(-2)*(error)*(input[i])*learning_rate;
    }
  }
  //====================================

  //We can think of this as a random line tending towards our desired line
  //These optimised weights produced new lines 
  float guessY(float x) {
    float wbias=weights[2];
    float wx=weights[0];
    float wy=weights[1];

    float y=-(wx/wy)*x-(wbias/wy);
    return y;
  }
  //====================================
}
