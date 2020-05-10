class Perceptron {
  float weights[]=new float[2];
  float learning_rate=0.01;  

  //==================================== 
  Perceptron() {

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
}
