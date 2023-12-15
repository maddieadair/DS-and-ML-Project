library(readr)
personality = read.csv("/Documents/ocean157ksafe.csv")

# 1- Fully disagree
# 2- Disagree
# 3- Neither disagree not disagree 
# 4- Agree
# 5- Fully Agree

# I see myself as someone...

# Who likes to talk
# That always tends to find fault in others
# That has the capacity to finish a task
# That he/she is depressed or sad
# Who is original and who comes up with new ideas
# What is reserved
# Who helps others and is not selfish
# Who can be a little careless
# Who is relaxed and handles problems well
# Who is curious about things
# Who is full of energy
colnames(personality)[1] <- "LikesToTalk"  
colnames(personality)[2] <- "FindFault"  
colnames(personality)[3] <- "FinishTask"  
colnames(personality)[4] <- "Depressed"  
colnames(personality)[5] <- "Original"  
colnames(personality)[6] <- "Reserved"  
colnames(personality)[7] <- "Selfless"  
colnames(personality)[8] <- "Careless"  
colnames(personality)[9] <- "Relaxed"  
colnames(personality)[10] <- "Curious"  
colnames(personality)[11] <- "Energetic"  



# Who starts fights with others
# Who is a reliable worker?
# That can be tense
# That is ingenious
# That always generates a lot of enthusiasm
# Who can forgive naturally
# Who tends to be disorganized
# Who worries a lot about everything
# Who has a very active imagination
# Who tends to be quiet
# Which is generally very reliable
colnames(personality)[12] <- "StartsFights"  
colnames(personality)[13] <- "ReliableWorker"  
colnames(personality)[14] <- "Tense"  
colnames(personality)[15] <- "Ingenious"  
colnames(personality)[16] <- "GenerateEnthusiasm"  
colnames(personality)[17] <- "Forgive"  
colnames(personality)[18] <- "Disorganized"  
colnames(personality)[19] <- "Worries"  
colnames(personality)[20] <- "ActiveImagination"  
colnames(personality)[21] <- "Quiet"  
colnames(personality)[22] <- "Reliable"  


# Who tends to be lazy
# Who is emotionally stable and does not get upset easily
# That is imaginative
# Who has an assertive personality
# Who can be cold and distant
# Who perseveres until the tasks are finished
# That can have alterations in moods
# That has artistic values
# Who is sometimes shy and inhibited
# Who is very considerate and kind to others
# That does things efficiently
colnames(personality)[23] <- "Lazy"  
colnames(personality)[24] <- "EmotionallyStable"  
colnames(personality)[25] <- "Imaginative"  
colnames(personality)[26] <- "Assertive"  
colnames(personality)[27] <- "ColdDistant"  
colnames(personality)[28] <- "Persevere"  
colnames(personality)[29] <- "MoodSwings"  
colnames(personality)[30] <- "Artistic"  
colnames(personality)[31] <- "Shy"  
colnames(personality)[32] <- "Considerate"  
colnames(personality)[33] <- "Efficient"  

# Who remains calm in tense situations
# Who prefers routine work
# Who is sociable
# Who can sometimes treat others badly
# That you can set goals and follow them
# Who gets nervous easily
# Who likes to think and reflect
# Who has few artistic interests
# Who likes to cooperate with others
# Easily distracted
# Who has sophisticated tastes in art, music or literature

colnames(personality)[34] <- "RemainCalm"  
colnames(personality)[35] <- "PreferRoutine"  
colnames(personality)[36] <- "Sociable"  
colnames(personality)[37] <- "TreatBadly"  
colnames(personality)[38] <- "SetFollowGoal"  
colnames(personality)[39] <- "EasilyNervous"  
colnames(personality)[40] <- "ThinkReflect"  
colnames(personality)[41] <- "FewArtInterest"  
colnames(personality)[42] <- "Cooperate"  
colnames(personality)[43] <- "EasilyDistracted"  
colnames(personality)[44] <- "SophisticatedTastes"  

# Big Five Inventory (BFI): neuroticism, extraversion, openness to experience
# agreeableness, and conscientiousness
colnames(personality)[45] <- "Extraversion"  
colnames(personality)[46] <- "Agreeableness"  
colnames(personality)[47] <- "Conscientiousness"  
colnames(personality)[48] <- "Neuroticism"  
colnames(personality)[49] <- "Openness"  

# Percentile extraversion/aggreeableness/conscientiousness/neuroticism/oppenness
colnames(personality)[50] <- "PerExtraversion"  
colnames(personality)[51] <- "PerAgreeableness"  
colnames(personality)[52] <- "PerConscientiousness"  
colnames(personality)[53] <- "PerNeuroticism"  
colnames(personality)[54] <- "PerOpenness"  


colnames(personality)[55] <- "Age" 
colnames(personality)[56] <- "Gender" 
# 1- Female
# 2- Male
# 3- Non-Binary
# 4- Genderfluid
# 5- Other
# 6- Prefer not to say

colnames(personality)[57] <- "Nationality"  
colnames(personality)[58] <- "Residence"  
colnames(personality)[59] <- "Timestamp"  
