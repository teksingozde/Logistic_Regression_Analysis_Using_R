# Logistic Regression Analysis

## Overview of Logistic Regression

One of the most used methods as an alternative to discriminant analysis and crosstabs logistic regression, normal distribution and common covariance assumptions were not met used at times. Logistic regression does not meet these assumptions. The reason is from the data set to be analyzed. That is, the dependent variable sorter and classifier scale, but independent variables can also be found on continuous or categorical scales they may be. A variable on a limiting or categorical scale is added to the logistic regression model. When it is desired to be added, some transformations should be made on the variables. This transformations will give a linear relationship between the dependent variable and the independent variable. Thus, the link can be one of the function, logit or probit transformations. For example, independent the result obtained as a result of these transformations of the 1 unit increase in the variables and the we can say that it causes a change in the independent variable as much as the product of the coefficient.

It should also be noted that; Since there are transformations on the variables in the model the maximum likelihood method is used to estimate the coefficients of the variables. In order for the obtained model to make sense, the independent variables in the model the significance of the coefficients needs to be tested. Tests, your best model they are guiding in making the establishment with the least variable. Logistic regression model,
Since it is not like the classical regression model, the likelihood ratio test is used to test the coefficients  (likelihood ratio test), Score test and Wald tests are used. The main problem here is; your model the variable to be examined about the dependent variable, whether it contains more information.

Odds (from differences) and odds ratio when interpreting the coefficients in the logistic regression model (the ratio of differences) is used. Odds taken from the natural logarithms of the logit transform is still. Odds ratio is the ratio of odds calculated for x=1 to odds calculated for x=0. The natural logarithm of the difference ratio gives the log odds ratio. will be included in the model
The variables are decided by interpreting the likelihood ratios and Wald statistics. One of the criticisms brought to logistic regression is that as the number of variables increases, it becomes difficult to build a model it is difficult. In other words, as the number of variables increases, the operation to be performed increases. Such transactions doing it is not as easy as it seems. In addition, an increase in the number of variables is predicted. It also causes the standard errors to be high. This is the main dataset increases its dependency.

Logistic Regression Model;

<img width="250" alt="Screen Shot 2023-05-23 at 8 06 25 PM" src="https://github.com/teksingozde/Logistic_Regression_Analysis_Using_R/assets/26927158/055b8f3e-e3bd-4be9-a543-a7a0bd586e36">

Since the parameters of the logistic regression model cannot be obtained analytically, an alternative as a method, estimation with the maximum likelihood (Maximum Likelihood=ML) technique is being done.
The assumptions about the type and distribution of the variables are few and the results are easily interpretable, etc. For reasons, logistic regression method is a frequently used method in recent years became the regression method. The number of categories of the qualitative dependent variable and different logistics according to whether the categories are unordered (nominal) or ordered (ordinal) regression methods are used.

The assumptions about the type and distribution of the variables are few and the results are easily interpretable, etc. For reasons, logistic regression method is a frequently used method in recent years became the regression method. The number of categories of the qualitative dependent variable and different logistics according to whether the categories are unordered (nominal) or ordered (ordinal) regression methods are used.

### 1. Binary Logistic Regression

It is a logistic regression method in which the dependent variable has two categories. While coding often 0 for no risk and 1 for risk. Independent there are no restrictions on the type of independent variables are continuous it can be numeric, discrete numeric, unordered or sortable qualitative variable types.

#### 1.1. Estimation of Regression Coefficients
The estimation of the regression coefficients in logistic regression analysis is usually the maximum likelihood. It is calculated using the method (maximum likelihood). This function returns the observed data specifies the probability as a function of unknown parameters. This function is the largest are the maximum likelihood estimators of the unknown parameters.


##### 1.2. Testing the Significance of the Coefficients
After obtaining the coefficient estimates, the significance of the variables/coefficients in the model was tested is done. Between the independent variables in the model and the response variable (dependent variable) whether the relationship is significant or not. In logistic regression, the whole significance of the model is made with the Likelihood Ratio Test, while the the significance of the variables is examined with one of the Wald or Score tests.

#### 1.3. Likelihood Ratio Test
In the case of only one independent variable, first of all, only the constant term model is created. Then the model with the constant term and the independent variable is created. The difference between the two values obtained from these models is multiplied by -2 ratio test value is calculated. In order to compare the models in the likelihood ratio test, all models must be in the same data set should be compared.

#### 1.4. Wald Test
Asymptotically similar results of the likelihood ratio test and the Wald test in large samples given is stated. On which test performs better in small samples although the theoretical information is insufficient, some studies have used the Wald test instead. It is recommended to use the likelihood ratio test.

#### 1.5. Score Test
There is no need to calculate the maximum likelihood estimation in the score test. Because, the biggest advantage is that it shortens the calculation processes a lot. The score test statistic conforms to the standard normal distribution.

### 2. Ordinal Logistic Regression Analysis
Ordinal logistic regression; cause and effect between the dependent variable and the independent variables tries to determine the relationship. Ordinal scale with at least three categories of dependent variable it is a method used in data. In ordinal logistic regression, the independent variables can be categorical or continuous. Only the covariate entering the model should be continuous. For categorical variables, each estimates are made separately for each category.

### 3. Multinomial Logistic Regression
To determine the cause and effect relationship between the dependent variable and the independent variables works. Independent variables can be categorical or continuous variables. Covariate entering the model it should be continuous. Separate estimates for each category for categorical variables is done.

### 4. Analysis Process


