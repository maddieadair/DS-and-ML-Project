df <- merge(psychedelic, personality, by = "hash")

# get the quantile ranges for each "percentile of ___" col
qExtr <- quantile(df$Extraversion,prob=seq(0.05,1,by=0.05))
get.quantile <- function(x)names(qExtr)[which.min(abs(qExtr-x))]
df$PctExtr  <- sapply(df$Extraversion,get.quantile)

qAgr <- quantile(df$Agreeableness,prob=seq(0.05,1,by=0.05))
get.quantile <- function(x)names(qAgr)[which.min(abs(qAgr-x))]
df$PctAgr  <- sapply(df$Agreeableness,get.quantile)

qCon <- quantile(df$Conscientiousness,prob=seq(0.05,1,by=0.05))
get.quantile <- function(x)names(qCon)[which.min(abs(qCon-x))]
df$PctCon  <- sapply(df$Conscientiousness,get.quantile)

qNeur <- quantile(df$Neuroticism,prob=seq(0.05,1,by=0.05))
get.quantile <- function(x)names(qNeur)[which.min(abs(qNeur-x))]
df$PctNeur  <- sapply(df$Neuroticism,get.quantile)

qOpen <- quantile(df$Openness,prob=seq(0.05,1,by=0.05))
get.quantile <- function(x)names(qOpen)[which.min(abs(qOpen-x))]
df$PctOpen  <- sapply(df$Openness,get.quantile)

# convert to numeric and remove the % sign
(df$PctExtr <- sapply(df$PctExtr, function(x) as.numeric(gsub("%", "", x))))
(df$PctAgr <- sapply(df$PctAgr, function(x) as.numeric(gsub("%", "", x))))
(df$PctCon <- sapply(df$PctCon, function(x) as.numeric(gsub("%", "", x))))
(df$PctNeur <- sapply(df$PctNeur, function(x) as.numeric(gsub("%", "", x))))
(df$PctOpen <- sapply(df$PctOpen, function(x) as.numeric(gsub("%", "", x))))

# copying the cols to the original ones
df$PerExtraversion <- df$PctExtr
df$PerAgreeableness <- df$PctAgr
df$PerConscientiousness <- df$PctCon
df$PerNeuroticism <- df$PctNeur
df$PerOpenness <- df$PctOpen

# deleting the extra cols
df <- subset(df, select = -c(PctOpen, PctNeur, PctCon, PctAgr, PctExtr))
df <- subset(df, select = -c(Timestamp))
df <- subset(df, select = -c(hash))
df <- subset(df, select = -c(X13_login_disclaimer_fork))

# change all "true" values to 1 so the categories are 
# 1 (true), 0 (false, not answered), -999 (not shown question)
df$PsychExternal[df$PsychExternal == 'true'] <- 1
df$MariExternal[df$MariExternal == 'true'] <- 1
df$StimExternal[df$StimExternal == 'true'] <- 1
df$SedExternal[df$SedExternal == 'true'] <- 1
df$AntiDepExternal[df$AntiDepExternal == 'true'] <- 1
df$DissocExternal[df$DissocExternal == 'true'] <- 1
df$MDMAExternal[df$MDMAExternal == 'true'] <- 1
df$OtherExternal[df$OtherExternal == 'true'] <- 1
df$TobExternal[df$TobExternal == 'true'] <- 1
df$CaffExternal[df$CaffExternal == 'true'] <- 1
df$AlcExternal[df$AlcExternal == 'true'] <- 1

# create new cols for the diff psychedelic categories
df <- cbind(df, Mushrooms=NA, LSD=NA, Ayahuasca=NA, DMT=NA, MeO=NA, Iboga=NA, SanPedro=NA, BufoAlvarius=NA)
df <- cbind(df, ReasonExplore=NA, ReasonFriends=NA, ReasonAlone=NA,ReasonRoutine=NA,ReasonGrowth=NA,ReasonReligious=NA,ReasonMedication=NA,ReasonOther=NA)
df <- cbind(df, Marijuana=NA,Tobacco=NA, Stimulants=NA, Caffeine=NA, Sedatives=NA, Antidepressants=NA, Dissociatives=NA, Alcohol=NA, MDMA=NA, OtherPsych=NA)

# below, can also change Yes/No to something else

# if the substring/number is in the string in PsychUsed, then "Yes" = 1, else "No" = 0 #PSYCHEDELICS
df$Mushrooms <- as.factor(ifelse(grepl("1", df$PsychUsed), 1, 0))
df$LSD <- as.factor(ifelse(grepl("2", df$PsychUsed), 1, 0))
df$Ayahuasca <- as.factor(ifelse(grepl("3", df$PsychUsed), 1, 0))
df$DMT <- as.factor(ifelse(grepl("4", df$PsychUsed), 1, 0))
df$MeO <- as.factor(ifelse(grepl("5", df$PsychUsed), 1, 0))
df$Iboga <- as.factor(ifelse(grepl("6", df$PsychUsed), 1, 0))
df$SanPedro <- as.factor(ifelse(grepl("7", df$PsychUsed), 1, 0))
df$BufoAlvarius <- as.factor(ifelse(grepl("8", df$PsychUsed), 1, 0))
df$NoPD <- ifelse(grepl("-999",df$PsychUsed),1,0)

# if the substring/number is in the string in ReasonUsePsych, then "Yes", else "No"
df$ReasonExplore <- as.factor(ifelse(grepl("1", df$ReasonUsePsych), 1, 0))
df$ReasonFriends <- as.factor(ifelse(grepl("2", df$ReasonUsePsych), 1, 0))
df$ReasonAlone <- as.factor(ifelse(grepl("3", df$ReasonUsePsych), 1, 0))
df$ReasonRoutine <- as.factor(ifelse(grepl("4", df$ReasonUsePsych), 1, 0))
df$ReasonGrowth <- as.factor(ifelse(grepl("5", df$ReasonUsePsych), 1, 0))
df$ReasonReligious <- as.factor(ifelse(grepl("6", df$ReasonUsePsych), 1, 0))
df$ReasonMedication <- as.factor(ifelse(grepl("7", df$ReasonUsePsych), 1, 0))
df$ReasonOther <- as.factor(ifelse(grepl("8", df$ReasonUsePsych), 1, 0))

# if the substring/number is in the string in PsychSubstance, then "Yes", else "No" #PSYCHOACTIVE SUBSTANCES
df$Marijuana <- as.factor(ifelse(grepl("1", df$PsychSubstance), 1, 0))
df$Tobacco <- as.factor(ifelse(grepl("2", df$PsychSubstance), 1, 0))
df$Stimulants <- as.factor(ifelse(grepl("3", df$PsychSubstance), 1, 0))
df$Caffeine <- as.factor(ifelse(grepl("4", df$PsychSubstance), 1, 0))
df$Sedatives <- as.factor(ifelse(grepl("5", df$PsychSubstance), 1, 0))
df$Antidepressants <- as.factor(ifelse(grepl("6", df$PsychSubstance), 1, 0))
df$Dissociatives <- as.factor(ifelse(grepl("7", df$PsychSubstance), 1, 0))
df$Alcohol <- as.factor(ifelse(grepl("8", df$PsychSubstance), 1, 0))
df$MDMA <- as.factor(ifelse(grepl("9", df$PsychSubstance), 1, 0))
df$OtherPsych <- as.factor(ifelse(grepl("10", df$PsychSubstance), 1, 0))
df$NoPA <- ifelse(grepl("-999",df$PsychUsed),1,0)

df$Gender = as.factor(df$Gender)

#install.packages("dplyr") (required to use relocate() function)
library(dplyr)

# move columns to after respective question
df <- relocate(df, Mushrooms, LSD, Ayahuasca, DMT, MeO, Iboga, SanPedro, BufoAlvarius, NoPD, .after = PsychUsed)
df <- relocate(df, ReasonExplore, ReasonFriends, ReasonAlone, ReasonRoutine, ReasonGrowth, ReasonReligious, ReasonMedication, ReasonOther, .after = ReasonUsePsych)
df <- relocate(df, Marijuana, Tobacco, Stimulants, Caffeine, Sedatives, Antidepressants, Dissociatives, Alcohol, MDMA, OtherPsych, NoPA, .after = PsychSubstance)

#remove unecessary columns
interest = c(1:8, #religion
             which(colnames(df) == "Mushrooms"):which(colnames(df) == "NoPD"),
             which(colnames(df)== "ReasonExplore"):which(colnames(df) == "ReasonMedication"),
             which(colnames(df)=="Marijuana"):which(colnames(df)=="NoPA"),
             which(colnames(df)=="CurrCalm"):which(colnames(df)=="Openness"),
             which(colnames(df)=="Age"),which(colnames(df)=="Gender"))

newInterest = data.frame(df[,interest])
write.csv(df,file="/Documents/UseMeFULL")
write.csv(df[,interest],file="/Documents/UseMeInterest.csv")
