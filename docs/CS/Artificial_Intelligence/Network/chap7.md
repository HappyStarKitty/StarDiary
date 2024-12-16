## Chap7 Layered Neural Networks and Backpropagation

!!! abstract
    - Functionality of multi-layer networks
    - Backpropagation-Algorithm
    - Modifications of Backpropogation-Algorithm

input layer -> hidden layer -> output layer

general feature:
- the first laysers of the network maps the input vector to a second space, called classification space
- the neurons in the last layer of the network must decode the classification produced by the previous layers and calculate the final input

## Backpropagation learning

The BP algorithm looks for the minimum of the error function in weight space using the method of gradient descent(梯度下降法).

popular activation function for BP networks is the Sigmond: $s:R\rightarrow [0,1]$

$$
S_c(x)=1/(1+e^{-cx})
$$

error function

### steps

- The NN is initialized with randomly chosen weights
- The error function is calculated
- The gradient of the error function is calculated
- Weights are adjusted to implement gradient vectors

### example

consider a NN with n input sites, r hidden neurons, and k output neurons:
- sigmoid is used as activation function in all neurons
- $W_{ij}^1$: the weight between input site i and hidden neuron j
- $w_{ij}^2$: the weight between hidden neuron i and output neuron j
- The thressholds in all neurons are 0: The bias of each neuron is inplemented as the weight of an additional input connection

![无法显示](figures/chap7/structure.png)
