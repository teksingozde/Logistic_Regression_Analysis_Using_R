# Multinomial Logistic Regression

# Model
colnames(multinomial) <- c("Y" , "X1", "X2" , "X3")
multinomial
multinomial$Y <- factor(multinomial$Y, levels=sort(unique(multinomial$Y)))
multinomial$X1 <- factor(multinomial$X1, levels=sort(unique(multinomial$X1)))
multinomial$X2 <- factor(multinomial$X2, levels=sort(unique(multinomial$X2)))
multinomial$X3 <- factor(multinomial$X3, levels=sort(unique(multinomial$X3)))
set.seed(28)
trainingRows <- sample(nrow(multinomial))
training <- multinomial[trainingRows, ]
test <- multinomial[-trainingRows, ]
library(nnet)
multinomModel <- multinom(Y ~ ., data=multinomial)
summary(multinomModel)

exp(coef(multinomModel))


# Omnibus Anova Table
mlr <- table(predict(multinomModel), multinomial$Y)
z <- summary(multinomModel)$coefficients/summary(multinomModel)$standard.errors
p <- (1-pnorm(abs(z),0,1))*2
p


# Confidence Interval
confint(multinomModel)

# Odss Ratio
library(lmtest)
lrtest(multinomModel)


# McFadden Test Statistics
library(pscl)
pR2(multinomModel)


# Wald Test
library(lmtest)
waldtest(multinomModel, test= "Chisq")


library(survey)
regTermTest(multinomModel, "X1")

library(survey)
regTermTest(multinomModel, "X2")

library(survey)
regTermTest(multinomModel, "X3")


