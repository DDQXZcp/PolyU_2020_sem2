# HMM-based defect detection

## Knowledge

### Probability Space
https://en.wikipedia.org/wiki/Probability_space

### discrete-time stochastic processes

### Markov process

### HMM learn chinese version

https://www.cnblogs.com/pinard/p/6945257.html

### HMM

https://en.wikipedia.org/wiki/Hidden_Markov_model

https://zh.wikipedia.org/wiki/%E9%9A%90%E9%A9%AC%E5%B0%94%E5%8F%AF%E5%A4%AB%E6%A8%A1%E5%9E%8B

Example: 

假设你有一个住得很远的朋友，他每天跟你打电话告诉你他那天做了什么。你的朋友仅仅对三种活动感兴趣：公园散步，购物以及清理房间。他选择做什么事情只凭天气。你对于他所住的地方的天气情况并不了解，但是你知道总的趋势。在他告诉你每天所做的事情基础上，你想要猜测他所在地的天气情况。

你认为天气的运行就像一个马尔可夫链。其有两个状态“雨”和“晴”，但是你无法直接观察它们，也就是说，它们对于你是隐藏的。每天，你的朋友有一定的概率进行下列活动：“散步”、“购物”、“清理”。因为你朋友告诉你他的活动，所以这些活动就是你的观察数据。这整个系统就是一个隐马尔可夫模型（HMM）。

你知道这个地区的总的天气趋势，并且平时知道你朋友会做的事情。也就是说这个隐马尔可夫模型的参数是已知的。你可以用程序语言（Python）写下来：
~~~
 states = ('Rainy', 'Sunny')
 
 observations = ('walk', 'shop', 'clean')
 
 start_probability = {'Rainy': 0.6, 'Sunny': 0.4}
 
 transition_probability = {
    'Rainy' : {'Rainy': 0.7, 'Sunny': 0.3},
    'Sunny' : {'Rainy': 0.4, 'Sunny': 0.6},
    }
 
 emission_probability = {
    'Rainy' : {'walk': 0.1, 'shop': 0.4, 'clean': 0.5},
    'Sunny' : {'walk': 0.6, 'shop': 0.3, 'clean': 0.1},
    }
~~~

### Python package hmmlearn

There are three fundamental problems for HMMs:

1. Given the model parameters and observed data, estimate the optimal sequence of hidden states.

2. Given the model parameters and observed data, calculate the model likelihood.

3. Given just the observed data, estimate the model parameters.

The first and the second problem can be solved by the dynamic programming algorithms known as the Viterbi algorithm and the Forward-Backward algorithm, respectively. The last one can be solved by an iterative Expectation-Maximization (EM) algorithm, known as the Baum-Welch algorithm.

### pdf from standford

https://web.stanford.edu/~jurafsky/slp3/A.pdf
