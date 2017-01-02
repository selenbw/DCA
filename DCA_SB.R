#Set our directory
#setwd("C:\\Decision Curve Analysis")
#Source file to use dca command
source("dca.R")
data.set = read.delim("dca.txt", header=TRUE, sep="\t")
attach(data.set)
#Test whether family history is associated with cancer
summary(glm(cancer ~ famhistory, family=binomial(link="logit")))
#Run the decision curve: family history is coded as 0 or 1, i.e. a probability
#so no need to specify the “probability” option
dca(data=data.set, outcome="cancer", predictors="famhistory")
#run the multivariable model
model = glm(cancer ~ marker + age + famhistory, family=binomial(link="logit"))
#save out predictions in the form of probabilities
data.set$cancerpredmarker = predict(model, type="response")
dca(data=data.set, outcome="cancer", predictors=c("cancerpredmarker","famhistory"),
    xstop=0.35)
#Test whether family history is associated with cancer
summary(glm(cancer ~ famhistory, family=binomial(link="logit")))
#Run the decision curve: family history is coded as 0 or 1, i.e. a probability
#so no need to specify the “probability” option
dca(data=data.set, outcome="cancer", predictors="famhistory")
#Test whether family history is associated with cancer
summary(glm(cancer ~ famhistory, family=binomial(link="logit")))
#Run the decision curve: family history is coded as 0 or 1, i.e. a probability
#so no need to specify the “probability” option
dca(data=data.set, outcome="cancer", predictors="famhistory")
#run the multivariable model
model = glm(cancer ~ marker + age + famhistory, family=binomial(link="logit"))
#save out predictions in the form of probabilities
data.set$cancerpredmarker = predict(model, type="response")
dca(data=data.set, outcome="cancer", predictors=c("cancerpredmarker","famhistory"),
    xstop=0.35)