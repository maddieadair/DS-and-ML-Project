library(readr)
data = read.csv("/Documents/UseMeInterest.csv")

#Get rid of index
data$X = NULL
data$PrayFreqChange = NULL
data$MeditationFreqChange = NULL
data$OtherPsych = NULL

data$Mushrooms = as.factor(data$Mushrooms)
data$LSD = as.factor(data$LSD)
data$Ayahuasca = as.factor(data$Ayahuasca)
data$DMT = as.factor(data$DMT)
data$MeO = as.factor(data$MeO)
data$Iboga = as.factor(data$Iboga)
data$SanPedro = as.factor(data$SanPedro)
data$BufoAlvarius = as.factor(data$BufoAlvarius)
data$NoPD = as.factor(data$NoPD)

data$Marijuana = as.factor(data$Marijuana)
data$Tobacco = as.factor(data$Tobacco)
data$Stimulants = as.factor(data$Stimulants) #(modafinil, cocaine, amphetamines)
data$Caffeine = as.factor(data$Caffeine)
data$Sedatives = as.factor(data$Sedatives) #(hypnotics, opioidata, bezodiazepines (such as clonazepam))
data$Antidepressants = as.factor(data$Antidepressants) #(antidepressants/antipsychotics)
data$Dissociatives = as.factor(data$Dissociatives) #(ketamine, salvia divinorum)
data$Alcohol = as.factor(data$Alcohol)
data$MDMA = as.factor(data$MDMA) #mdma/ecstasy
data$NoPA = as.factor(data$NoPA)

data$ReasonExplore = as.factor(data$ReasonExplore)
data$ReasonFriends = as.factor(data$ReasonFriends)
data$ReasonAlone = as.factor(data$ReasonAlone)
data$ReasonRoutine = as.factor(data$ReasonRoutine)
data$ReasonGrowth = as.factor(data$ReasonGrowth)
data$ReasonReligious = as.factor(data$ReasonReligious)
data$ReasonMedication = as.factor(data$ReasonMedication)

data$PriorPsychHelp = as.factor(ifelse(data$PriorPsychHelp==1,1,0))
data$Hospitalization = as.factor(ifelse(data$Hospitalization==1,1,0))
data$UsePsychMeds = as.factor(ifelse(data$UsePsychMeds==1,1,0))

data$Gender = as.factor(data$Gender)

PMFreq = which(colnames(data)=="PrayFreq"):which(colnames(data)=="MeditationFreq")
data[,PMFreq] = lapply(data[,PMFreq], as.factor)

traits = which(colnames(data)=="CurrCalm"):which(colnames(data)=="FinishTask")
data[,traits] = lapply(data[,traits], as.factor)

traits2 = which(colnames(data)=="Original"):which(colnames(data)=="SophisticatedTastes")
data[,traits2] = lapply(data[,traits2], as.factor)

#responsevar
data$Y = as.factor(ifelse(data$Depressed > 3,1,0)) #1 is yes,  0 is no
data$Depressed = as.factor(data$Depressed)

write.csv(data,"/Documents/UseMeInterest2.csv")


###########################################################################


#Random Forest

data = read.csv("/Documents/UseMeInterest2.csv")
library(randomForest)
set.seed(11)

data <- data[, -c(which(colnames(data)=="CurrCalm"):which(colnames(data)=="SophisticatedTastes"))]

library(randomForest)

# 10 iterations
p = ncol(data) - 1
B = 500
MSE = rep(0,10)

p = ncol(data) - 1
B = 500
MSE = rep(0,10)

for (i in 1:10) {
  set.seed(i)
  train.idx = sample(1:nrow(data), nrow(data)*0.8)
  Y.test = data[-train.idx, "Y"]
  X.test = data[-train.idx, -40]
  rf.cv = randomForest(Y ~., data = data, subset = train.idx, 
                       xtest = X.test, ytest = Y.test, ntree = B, 
                       mtry = sqrt(p), importance=TRUE, keep.forest=TRUE)
  yhat.rf = predict(rf.cv, newdata = data[-train.idx,])
  conf.mat = table(yhat.rf, data[-train.idx,]$Y)
  MSE[i] = (conf.mat[1,2] + conf.mat[2,1])/sum(conf.mat)
}

MSE
mean(MSE)
varImpPlot(rf.cv)



###########################################################################

# Neural Network


data = read.csv("/Documents/UseMeInterest2.csv")
summary(data)
#Get rid of index
data$X = NULL
data$PrayFreqChange = NULL
data$MeditationFreqChange = NULL
data$OtherPsych = NULL
data$Mushrooms = as.numeric(data$Mushrooms)
data$LSD = as.numeric(data$LSD)
data$Ayahuasca = as.numeric(data$Ayahuasca)
data$DMT = as.numeric(data$DMT)
data$MeO = as.numeric(data$MeO)
data$Iboga = as.numeric(data$Iboga)
data$SanPedro = as.numeric(data$SanPedro)
data$BufoAlvarius = as.numeric(data$BufoAlvarius)
data$NoPD = as.numeric(data$NoPD)
data$Marijuana = as.numeric(data$Marijuana)
data$Tobacco = as.numeric(data$Tobacco)
data$Stimulants = as.numeric(data$Stimulants)
data$Caffeine = as.numeric(data$Caffeine)
data$Sedatives = as.numeric(data$Sedatives)

data$Antidepressants = as.numeric(data$Antidepressants) #(antidepressants/antipsycho
data$Dissociatives = as.numeric(data$Dissociatives) #(ketamine, salvia divinorum)
data$Alcohol = as.numeric(data$Alcohol)
data$MDMA = as.numeric(data$MDMA) #mdma/ecstasy
data$NoPA = as.numeric(data$NoPA)
data$ReasonExplore = as.numeric(data$ReasonExplore)
data$ReasonFriends = as.numeric(data$ReasonFriends)
data$ReasonAlone = as.numeric(data$ReasonAlone)
data$ReasonRoutine = as.numeric(data$ReasonRoutine)
data$ReasonGrowth = as.numeric(data$ReasonGrowth)
data$ReasonReligious = as.numeric(data$ReasonReligious)
data$ReasonMedication = as.numeric(data$ReasonMedication)
data$PriorPsychHelp = as.numeric(ifelse(data$PriorPsychHelp==1,1,0))
data$Hospitalization = as.numeric(ifelse(data$Hospitalization==1,1,0))
data$UsePsychMeds = as.numeric(ifelse(data$UsePsychMeds==1,1,0))
data$Gender = as.numeric(data$Gender)
data$Y = as.factor(ifelse(data$Depressed>3,1,0))
data <- data[, -c(which(colnames(data)=="CurrCalm"):which(colnames(data)=="SophisticatedTastes"))]

#responsevar 
#1 is yes, 0 is no

data$Depressed = NULL
data$Iboga = NULL


set.seed(10)
p = ncol(data)
n = nrow(data)
train = sample(n, 0.8*n)
train_data = data[train,1:p-1]
train_labels = data[train,p]
test_data = data[-train,1:p-1]
test_labels = data[-train,p]

library(keras)
library(embed)

train_labels = to_categorical(as.numeric(train_labels)-1)
test_labels =  to_categorical(as.numeric(test_labels)-1)

train_data = scale(train_data)
col_means_train = attr(train_data, "scaled:center")
col_stddevs_train = attr(train_data,"scaled:scale")
test_data = scale(test_data,center = col_means_train,scale = col_stddevs_train)

model <- keras_model_sequential(layers = list(
  layer_dense(units = 4,activation = 'relu',input_shape = dim(train_data)[2]),
  layer_dense(units = 2, activation = 'softmax')
))
model

compile(model,loss='categorical_crossentropy',optimizer = 'adam',metrics = 'accuracy')

early_stop = callback_early_stopping(monitor = 'val_loss',patience = 15)
history = fit(model,train_data,train_labels,epochs = 100, batch_size = 32, validation_split = 0.2)

plot(history,smooth=F)

test.pred = predict(model,test_data)

accume = evaluate(model,test_data,test_labels)