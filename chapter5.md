# Ch5 Resampling Methods

* SLM = Statistical Learning Method (like standard deviation etc)

### 5.1 Cross-validation (2 Questions)

* resampling -- Going to sample from our data

* CROSS VALIDATION & BOOTSTRAPPING 

* TEST ERROR: Average error from SLM from NEW data/observations

* TRAINING ERROR: Average error from SLM on data used in training

* Training error rate and test error rate are usually different and the former can dramatically underestimate the latter 

* Training error is not a good surrogate for test error

* Low complexity model = Few number of features or coefficients or predictors

* High means large number 

* The more complex the model, the more the training error will go down

* The more complex the model, the higher the test error (an example of overfitting)

* So bias and variance together give us test error.

BEST SOLUTION: A large designated test set (but this is often not available)

* Some methods make a mathematical adjustment to the training error rate in order to estimate the test error rate:
  * Cp Statistic, AIC, BIC

* ANOTHER SOLUTION: HOLDOUT TEST

* QUANTITATIVE RESPONSE: mean squared error 

* QUALITATIVE OR DISCRETE/CLASSIFICATION RESPONSE: misclassification error rate

* Test error is only less if the test set has easier cases than the training set

### 5.2 K-fold Cross-Validation (1 Question)

* 5 or 10 are best for K

* K-fold CV is much better than Leave One Out (LOOCV) because it "shakes up the data" more

* Prediction error will be biased upward with K vs LOOCV

* K=5 or 10 is a good compromise for this bias-variance tradeoff

### 5.3 Cross-Validation: the wrong and right way (1 Question)

* Consider: simple classifier applied to two-class data
1. Start with 5000 predictors and 50 samples, find 100 predictors having the largest correlation with the class labels
2. Then apply a classifier such as logistic regression using only these 10 predictors

THE WRONG WAY: Apply cross validation to only step 2
THE RIGHT WAY: Apply cross validation to both steps

* We form the k-folds  BEFORE we filter or fit the data

#### QUESTION: Suppose that we perform forward stepwise regression and use cross-validation to choose the best model size.

Using the full data set to choose the sequence of models is the WRONG way to do cross-validation (we need to redo the model selection step within each training fold). If we do cross-validation the WRONG way, which of the following is true?

CORRECT: The selected model will probably be too complex
INCORRECT: The selected model will probably be too simple

### 5.4 The Bootstrap (1 Question)

In this case, we'll see the bootstrap-- the bootstrap, is
we're going use the data itself to try to get more
information about our estimator.

So the standard error of alpha hat is roughly 0.083.
The standard error of an estimator is the standard
deviation in that sampling distribution.
So if you're able to recompute the estimator many, many times
from your samples, the standard deviation is called
the standard error.

#### QUESTION
One way of carrying out the bootstrap is to average equally over all possible bootstrap samples from the original data set (where two bootstrap data sets are different if they have the same data points but in different order). Unlike the usual implementation of the bootstrap, this method has the advantage of not introducing extra noise due to resampling randomly. (You can use "^" to denote power, as in "n^2")

To carry out this implementation on a data set with n data points, how many bootstrap data sets would we need to average over?

#### Explanation

Completely removing the bootstrap resampling noise is usually not worth incurring the extreme computational cost. If B is large, but still less than n^n, random resampling gives a good Monte Carlo estimate of the idealized bootstrap estimate for all n^n data sets.

### 5.5 More on the Bootstrap (1 Question)

### 5.R Resampling in R (4 Questions)

### Chapter 5 Quiz (2 Questions)

