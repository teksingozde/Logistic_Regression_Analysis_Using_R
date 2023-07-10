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

### 3. Multinomial Logistic Regression Analysis
To determine the cause and effect relationship between the dependent variable and the independent variables works. Independent variables can be categorical or continuous variables. Covariate entering the model it should be continuous. Separate estimates for each category for categorical variables is done.

### 4. Analysis Process
#### 4.1. Binary Logistic Regression Analysis
##### 4.1.1. Model

<img width="550" alt="Model1" src="https://github.com/teksingozde/Logistic_Regression_Analysis_Using_R/assets/26927158/55a7b98a-8744-421c-9662-dac2d31001b8">

<img width="500" alt="Model2" src="https://github.com/teksingozde/Logistic_Regression_Analysis_Using_R/assets/26927158/417e200e-28d8-419c-959f-9502f558b3b1">

Since the p values for the variables in the table are greater than 0.05, the effect of the variables on the formation of ME cannot be measured. Confidence intervals are also shown.

The coefficients of the variables in the model, standard errors of these coefficients, levels of significance, and exp(β) statistics are given in the table.

According to the table HDL sig. value (0.00944<0.05 has an effect on the formation of ME disease. Patients with HDL are 0.97 times more likely to have ME disease than those without. DM1 sig. value (3.82e-06<0.05), it has an effect on the formation of ME disease. Patients with DM1 are 12,227 times more likely to develop ME than those without.
Since the AGE variable is (0.26>0.05), it has no effect on the occurrence of ME.

Model;
It is written as Z= -1.81-0.025HDL+2.50DM1+0.026AGE.

According to the values of age=60, HDL=24 and DM=1 taken from the table, the probability of a person to have ME is;
L=ln(P/1-P)= -1.81-0.025*1+2.52*24+0.026*60
    = 60.205

<img width="200" alt="Screen Shot 2023-07-09 at 5 36 23 PM" src="https://github.com/teksingozde/Logistic_Regression_Analysis_Using_R/assets/26927158/f6e42e0a-36e5-4489-84d1-eddf1707dda6">

Therefore, the person with age=60, HDL=24 and DM=1 has ME.

##### 4.1.2. Hosmer Lemeshow Test

<img width="500" alt="Hosmer_Lemeshow_Test" src="https://github.com/teksingozde/Logistic_Regression_Analysis_Using_R/assets/26927158/fe4cb67a-ecc7-4263-bf91-ea6427d8de93">

The Hosmer lemeshow χ2 goodness-of-fit test evaluates the fit of the logistic regression model as a whole. It is much more powerful than the traditional χ2 test, especially when the independent variables are continuous variables or when working with small samples. Hosmer lemeshow is a more powerful alternative to omnibus testing. If the result of this test is not significant, a p value greater than 0.05 indicates that the model-data fit is sufficient.

Ho: The model satisfies the condition of goodness of fit.
H1: The model does not meet the condition of goodness of fit.

Since p=0.06845>0.05, the model satisfies the condition of goodness of fit.

##### 4.1.3. Hosmer Lemeshow Test II

<img width="500" alt="Hosmer_Lemeshow_Test2" src="https://github.com/teksingozde/Logistic_Regression_Analysis_Using_R/assets/26927158/97b54bbb-13af-4b09-9ec4-8606f33c4118">

Ho: The model satisfies the condition of goodness of fit.
H1: The model does not meet the condition of goodness of fit.

Since p=0.4072>0.05, the model satisfies the condition of goodness of fit.

##### 4.1.4. Likelihood Ratio Test

<img width="500" alt="Likelihood_Ratio" src="https://github.com/teksingozde/Logistic_Regression_Analysis_Using_R/assets/26927158/32236492-5221-4721-85bf-4af7cd574625">

When the value obtained in the likelihood ratio test is small, it indicates that the variables added to the model do not make a significant contribution to the logit estimation and the variables do not need to be included in the model. Looking at the table, the likelihood ratio test result is 35.463, which is a high value. In short, the values added to the model make an important contribution to the logit estimation.

##### 4.1.5. Pseudo R2

<img width="600" alt="Pseudo_R2" src="https://github.com/teksingozde/Logistic_Regression_Analysis_Using_R/assets/26927158/d8bfac51-2e1f-4ee0-9ce2-94ea9418a84a">

McFadden likelihood ratio test, the log likelihood of the model with no independent variables and only the constant can be considered as the sum of squares, and the log likelihood of the model with the independent variables can now be considered as the sum of squares. Since McFadden R2 tends to take very small values compared to R2 obtained in multiple linear regression, it can be said that a value between 0.20 and 0.40 is very high. The value is high because the McFadden R2 value is 0.28.

Independent variables explain 43.4% of the total change in the dependent variable, according to Nagelkerke.

Independent variables explain 32.5% of the total change in the dependent variable, according to Cox Snell.

##### 4.1.6. Wald Test

<img width="550" alt="Wald_Testi" src="https://github.com/teksingozde/Logistic_Regression_Analysis_Using_R/assets/26927158/d2f6db7b-4229-4ae5-b190-ad3c9234efb6">

One of the methods that tests the significance of the model is the wald statistics. Wald statistic also determines whether the coefficients of the independent variables are significant or not.

As a result, the relationship between ME and logit was found to be linear. (Wald=25.312, p=1.329e-05)

##### 4.1.7. Classification Table

<img width="250" alt="Classification_Table" src="https://github.com/teksingozde/Logistic_Regression_Analysis_Using_R/assets/26927158/7661b14a-0288-4073-ae47-0d69c58b2ad2">

According to the table, 0.50 is given as cutoff point and classification is made with the help of estimated probabilities. Over 50% are assigned to group 1, those below 50% are assigned to group 0.
Thirty-four, or 79%, of 43 people without ME were classified correctly, and 9 out of 43, or 20%, were misclassified.
Of the 47 people with ME 10, that is 21%, were classified incorrectly, and 37 of the 47 people that is, 79%, were classified correctly.

#### 4.2. Ordinal Logistic Regression Analysis
##### 4.2.1. Model

<img width="500" alt="Screen Shot 2023-07-06 at 7 29 38 PM" src="https://github.com/teksingozde/Logistic_Regression_Analysis_Using_R/assets/26927158/e7058a4a-45d4-4ff1-97fd-81476601f4d6">

The coefficients of the variables in the model, standard errors of these coefficients, levels of significance, and exp(β) statistics are given in the table.

According to the table X1 sig. value (0.46>0.05), X1 has no effect on Y disease.
X3 sig. value (0.61>0.05), it has no effect on Y disease.
Since the X4 variable is (0.35>0.05), it has no effect on disease Y.

Since the variable X2 is a categorical variable, its probabilities are also given in the table.

##### 4.2.2. Likelihood Ratio Test

<img width="500" alt="Screen Shot 2023-07-06 at 7 36 52 PM" src="https://github.com/teksingozde/Logistic_Regression_Analysis_Using_R/assets/26927158/e1be1253-9765-4506-ac44-84a67430e6c9">

When the value obtained in the likelihood ratio test is small, it indicates that the variables added to the model do not make a significant contribution to the logit estimation and the variables do not need to be included in the model.

Since p=0.005<0.05, the model does not meet the goodness-of-fit condition. The coefficients do not contribute to the estimation of Y.

##### 4.2.3. Pseudo R2

<img width="550" alt="Screen Shot 2023-07-06 at 7 39 28 PM" src="https://github.com/teksingozde/Logistic_Regression_Analysis_Using_R/assets/26927158/7e0e5a40-daf3-47f7-83c7-f6f2dae0b3ee">

McFadden likelihood ratio test, the log likelihood of the model with no independent variables and only the constant can be considered as the sum of squares, and the log likelihood of the model with the independent variables can now be considered as the sum of squares. Since McFadden R2 tends to take very small values compared to R2 obtained in multiple linear regression, it can be said that a value between 0.20 and 0.40 is very high. Since the McFadden likelihood ratio test result in the table is 0.0042, the value cannot be said to be high.

##### 4.2.4. Wald Test

<img width="350" alt="Screen Shot 2023-07-06 at 7 47 00 PM" src="https://github.com/teksingozde/Logistic_Regression_Analysis_Using_R/assets/26927158/90969153-57e4-482d-86dc-c06ebc3cc777">

One of the methods that tests the significance of the model is the wald statistics. Wald statistic also determines whether the coefficients of the independent variables are significant or not.
As a result, the relationship between variable Y and logit was not found to be linear. In short, the coefficient is not significant. (Wald=2.399, p=0.9345)

##### 4.2.5. Classification Table

<img width="500" alt="Screen Shot 2023-07-06 at 7 59 52 PM" src="https://github.com/teksingozde/Logistic_Regression_Analysis_Using_R/assets/26927158/73a33ae3-b510-4010-b0e2-d47b8c6013d2">

Variable Y has 7 values from 2 (very severe), 12 values from 1 (moderate) and 9 values from 0 (less severe).

There are 5 out of 5, 6 out of 4, 8 out of 3, 7 out of 2, and 2 out of 1 in the variable X2.

The classification percentages of the classification table are also shown in the table.






























