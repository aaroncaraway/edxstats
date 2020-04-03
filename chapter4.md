# Ch4 Classification

### 4.1 Introduction to Classification Problems 

### 4.2 Logistic Regression 

### 4.3 Multivariate Logistic Regression 

### 4.4 Logistic Regression - Case-Control Sampling and Multiclass 

* 5 or 6 to one is fine for predictor/not predictor 
* Multiclass logistic regression == multinomial regression

### 4.5 Discriminant Analysis 

* P(y=1|x) from logistic regression is not linear because it involves both an exponential function of x and a ratio

### 4.6 Gaussian Discriminant Analysis - One Variable 

### 4.7 Gaussian Discriminant Analysis - Many Variables 

### 4.8 Quadratic Discriminant Analysis and Naive Bayes 

* Two forms of CLASSIFICATION:
1. Regression
2. Linear Discriminant Analysis

* BOTH give linear logistic models
* Difference is in how parameters are estimated

#### Logistic Regression
* Uses conditional liklihood based on probability of Y given X Pr(Y|X)
* ^^^ is known as *Discriminative Learning*
* Only using distribution of Y
* NOTE: Can also fit quadratic boundaries

#### LDA 
* uses the full likelihood based on Pr(X,Y)
* ^^^ known as *Generative Learning*
* Using the distribution of Xs and Ys

#### QDA
* QDA is a more flexible model than LDA

### 4.R Classification in R 

#### QUESTIONS:

Which of the following tools would be well suited for predicting if a student will get an A in a class based on the student's height, and parents’ income? 
* LDA
* Linear Regression
* Logistic Regression

Explanation

Whether or not a student gets an A is a categorical variables. Thus, we should use a classification technique like LDA or Logistic Regression. For binary classification, linear regression and LDA are almost equivalent.

