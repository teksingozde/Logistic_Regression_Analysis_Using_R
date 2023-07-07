## Ordinal Logistic Regression

# Model 
ordinal$Y <- factor(ordinal$Y,levels=sort(unique(ordinal$Y)))
ordinal$X2 <- factor(ordinal$X2,levels=sort(unique(ordinal$X2)))
ind <- sample(2, nrow(data), replace=TRUE, prob=c(0.8,0.2))
library(MASS)
model=polr(Y~X1+X2+X3+X4, data=ordinal, Hess = TRUE)
summary(model)


(ctable<-coef(summary(model)))
p <- pnorm(abs(ctable[,"t value"]), lower.tail=FALSE)*2
(ctable <- cbind(ctable,"p value"=p))

# Confidence Interval
confint(model)

# Likelihood Ratio Test
library(lmtest)
lrtest(model)

# Pseudo R2
library(pscl)
pR2(model)

# Wald Test
library(lmtest)
ordinal$Volume <- ordinal$Volume / 1000000
waldtest(model, test="Chisq")

# Classification Table
Class = table(Y,X2)
margin.table(Class,1)
margin.table(Class,2)
prop.table(margin.table(Class,1))
prop.table(margin.table(Class,2))

