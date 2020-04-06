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

### 5.3 Cross-Validation: the wrong and right way (1 Question)

### 5.4 The Bootstrap (1 Question)

### 5.5 More on the Bootstrap (1 Question)

### 5.R Resampling in R (4 Questions)

### Chapter 5 Quiz (2 Questions)

