library(readr)
psychedelic = read.csv("/Documents/concienciaysustancia10k7safe.csv")

# How religious do you consider yourself?
colnames(psychedelic)[1] <- "Religiousness"  
# Sliding scale from "None (0)" to "A lot (100), 50 = no change"

# How often do you pray?
colnames(psychedelic)[2] <- "PrayFreq"
# 1- Every day
# 2- Once or several times a week
# 3- Once or several times a month
# 4- Very sporadically
# 5- Never

# How did that frequency change with the quarantine?
colnames(psychedelic)[3] <- "PrayFreqChange"
# Sliding Scale from "Decreased a lot" to "Increased a lot"
# Not asked if Never was chosen for previous question

# How often do you meditate?
colnames(psychedelic)[4] <- "MeditationFreq"
# 1- Every day
# 2- Once or several times a week
# 3- Once or several times a month
# 4- Very sporadically
# 5- Never

# How did that frequency change with the quarantine?
colnames(psychedelic)[5] <- "MeditationFreqChange"
# Sliding Scale from "Decreased a lot (0)" to "Increased a lot (100), 50 = no change"
# Not asked if Never (5) was chosen for previous question


# Did you previously receive psychological or psychiatric assistance?
colnames(psychedelic)[6] <- "PriorPsychHelp"
# 1- Yes
# 2- No


# Were you hospitalized for psychological or psychiatric problems?
colnames(psychedelic)[7] <- "Hospitalization"
# 1- Yes
# 2- No

# Are you currently taking any psychiatric medication?
colnames(psychedelic)[8] <- "UsePsychMeds"
# 1- Yes
# 2- No

# Check if you have ever used any of the following psychedelics
colnames(psychedelic)[9] <- "PsychUsed"
# Multi Check-box
# -999- None chosen
# 1- Mushrooms
# 2- LSD or analog
# 3- Ayahuasca
# 4- DMT
# 5- 5-MeO-DMT
# 6- Iboga/ibogaine
# 7- San Pedro (mescaline)
# 8-  Bufo alvarius (Colorado River Toad)

# How many times have you consumed a dose with noticeable effects (medium or high)
# of psychedelics in your entire life?
colnames(psychedelic)[10] <- "TimesConsumed"
# Enter a value in
# -999- Not shown if no psychedelics chosen in previous question

# How would you rate your average experience with psychedelics?
colnames(psychedelic)[11] <- "RatePsychExp"
# Sliding scale from "Very Bad (0)" to "Excellent (100)", 50- no change
# -999- Not shown if no psychedelics chosen in previous question

# Are you or have you been on a sustained psychedelic microdosing program?
colnames(psychedelic)[12] <- "MicrodoseProg"
# 1- Yes
# 2- No
# -999- Not shown if no psychedelics chosen in previous question

# Since the beginning of quarantine, your use of psychedelic substances:
colnames(psychedelic)[13] <- "PsychUseChange"
# Sliding Scale from "Decreased a lot (0)" to "Increased a lot (100)", 50- no change
# -999- Not shown if no psychedelics chosen in previous question

# My consumption decreased due to external factors. 
# (e.g. I don't have any, I have little left, I live with other people, etc.” checkbox)
colnames(psychedelic)[14] <- "PsychExternal"
# check box
# true (1)
# 0- false (not checked)
# -999- Question not shown (only shown if previous answer on psychedelic change decreased)

# Of the following psychedelics, which was most significant in your life?
colnames(psychedelic)[15] <- "MostSigPsych"
# Multi Check-box, choose from choices chosen in "PsychUsed"
# -999- Not shown if no psychedelics chosen in previous question
# 1- Mushrooms
# 2- LSD or analog
# 3- Ayahuasca
# 4- DMT
# 5- 5-MeO-DMT
# 6- Iboga/ibogaine
# 7- San Pedro (mescaline)
# 8-  Bufo alvarius (Colorado River Toad)

# When was the last time you took a dose with noticeable effects of a psychedelic?
colnames(psychedelic)[16] <- "PsychLastUse"
# 1- Less than a week ago
# 2- This month
# 3- Last month
# 4- At some point in the last 6 months
# 5- Last year
# 6- Two years ago
# 7- More than two years ago
# 8- More than five years ago
# 9- More than ten years ago
# -999- Not shown if no psychedelics chosen in previous question

# For which of these reasons did you ever use psychedelics?
colnames(psychedelic)[17] <- "ReasonUsePsych"
# 1- Exploration or curiosity about the psychedelic
# 2- Fun with friends
# 3- Fun alone
# 4- To get out of the daily routine
# 5- Search for personal growth and development
# 6- As a religious or spiritual practice
# 7- As medication for therapeutic purposes
# 8- Other (then asks to type it in if chosen)
# -999- Not shown if no psychedelics chosen in previous question


# Other motives (if chose "Other" in previous question)
colnames(psychedelic)[18] <- "OtherMotives"
# -999- Not shown if "Other" was not chosen

#Do you consume or have you consumed any of the following psychoactive substances?
colnames(psychedelic)[19] <- "PsychSubstance"
# 1- Marijuana
# 2- Tobacco
# 3- Stimulants (modafinil, cocaine, amphetamines)
# 4- Caffeine
# 5- Sedatives (hypnotics, opioids, bezodiazepines (such as clonazepam))
# 6- Antidepressants or antipsychotics
# 7- Dissociatives (ketamine, salvia divinorum)
# 8- Alcohol
# 9- MDMA/ecstasy
# 10 (?)- Other (asks to type in if chosen)
# -999- None chosen 

# Other motives 
colnames(psychedelic)[20] <- "OtherPsychSub"
# -999- Not shown if "Other" was not chosen


# How has your Marijuana consumption changed with the quarantine?
colnames(psychedelic)[21] <- "MariFreqChange"
# Sliding Scale from "Decreased a lot (0)" to "Increased a lot (100)", 50- no change
# -999- Not shown if Marijuana was not chosen in previous question

# How has your Stimulant consumption changed with the quarantine?
colnames(psychedelic)[22] <- "StimFreqChange"
# Sliding Scale from "Decreased a lot (0)" to "Increased a lot (100)", 50- no change
# -999- Not shown if Stimulant was not chosen in previous question

# How has your Sedative consumption changed with the quarantine?
colnames(psychedelic)[23] <- "SedFreqChange"
# Sliding Scale from "Decreased a lot (0)" to "Increased a lot (100)", 50- no change
# -999- Not shown if Sedative was not chosen in previous question

# How has your Antidepressant or Antipsychotic consumption changed with the quarantine?
colnames(psychedelic)[24] <- "AntiDepFreqChange"
# Sliding Scale from "Decreased a lot (0)" to "Increased a lot (100)", 50- no change
# -999- Not shown if Antidepresseant/Antipsychotic was not chosen in previous question

# How has your Dissociative consumption changed with the quarantine?
colnames(psychedelic)[25] <- "DissocFreqChange"
# Sliding Scale from "Decreased a lot (0)" to "Increased a lot (100)", 50- no change
# -999- Not shown if Dissociatives was not chosen in previous question

# How has your MDMA/ecstasy consumption changed with the quarantine?
colnames(psychedelic)[26] <- "MDMAFreqChange"
# Sliding Scale from "Decreased a lot (0)" to "Increased a lot (100)", 50- no change
# -999- Not shown if MDMA/ecstasy was not chosen in previous question

# How has your "Other" consumption changed with the quarantine?
colnames(psychedelic)[27] <- "OtherFreqChange"
# Sliding Scale from "Decreased a lot (0)" to "Increased a lot (100)", 50- no change
# -999- Not shown if Other was not chosen in previous question

# My (____) consumption decreased due to external factors. 
# (e.g. I don't have any, I have little left, I live with other people, etc.” checkbox)"
colnames(psychedelic)[28] <- "MariExternal"
colnames(psychedelic)[29] <- "StimExternal"
colnames(psychedelic)[30] <- "SedExternal"
colnames(psychedelic)[31] <- "AntiDepExternal"
colnames(psychedelic)[32] <- "DissocExternal"
colnames(psychedelic)[33] <- "MDMAExternal"
colnames(psychedelic)[34] <- "OtherExternal"


# How has your Tobacco consumption changed with the quarantine?
colnames(psychedelic)[35] <- "TobFreqChange"
# Sliding Scale from "Decreased a lot (0)" to "Increased a lot (100)", 50- no change
# -999- Not shown if Tobacco was not chosen in previous question

# My Tobacco consumption decreased due to external factors. 
# (e.g. I don't have any, I have little left, I live with other people, etc.” checkbox)"
colnames(psychedelic)[36] <- "TobExternal"
# True (1)
# 0- False (not chosen)
# -999- Question not shown (only shown if previous answer on Tobacco change decreased)

# How has your Caffeine consumption changed with the quarantine?
colnames(psychedelic)[37] <- "CaffFreqChange"
# Sliding Scale from "Decreased a lot (0)" to "Increased a lot (100)", 50- no change
# -999- Not shown if Caffeine was not chosen in previous question

# My Caffeine consumption decreased due to external factors. 
# (e.g. I don't have any, I have little left, I live with other people, etc.” checkbox)"
colnames(psychedelic)[38] <- "CaffExternal"
# True (1)
# 0- False (not chosen)
# -999- Question not shown (only shown if previous answer on Caffeine change decreased)

# How has your Alcohol consumption changed with the quarantine?
colnames(psychedelic)[39] <- "AlcFreqChange"
# Sliding Scale from "Decreased a lot (0)" to "Increased a lot (100)", 50- no change
# -999- Not shown if Alcohol was not chosen in previous question

# My Alcohol consumption decreased due to external factors. 
# (e.g. I don't have any, I have little left, I live with other people, etc.” checkbox)"
colnames(psychedelic)[40] <- "AlcExternal"
# True (1)
# 0- False (not chosen)
# -999- Question not shown (only shown if previous answer on Alcohol change decreased)



# How do you feel at this moment?
# Mark how you are feeling in relation to each phrase.
# 1- Not at all
# 2- A liitle
# 3- Quite a bit
# 4- A lot

# I feel calm
colnames(psychedelic)[41] <- "CurrCalm"

# I feel safe
colnames(psychedelic)[42] <- "CurrSafe"

# I'm tense
colnames(psychedelic)[43] <- "CurrTense"

# I feel disgusted
colnames(psychedelic)[44] <- "CurrDisgusted"

#I feel like a fish in water
colnames(psychedelic)[45] <- "CurrFish"

# I feel altered (?)
colnames(psychedelic)[46] <- "CurrAltered"

# At this moment I am worried about a possible problem
colnames(psychedelic)[47] <- "CurrWorried"

# I feel satisfied
colnames(psychedelic)[48] <- "CurrSatisfied"

# I feel scared
colnames(psychedelic)[49] <- "CurrScared"

# I feel comfortable
colnames(psychedelic)[50] <- "CurrComfortable"

# I have confidence in myself
colnames(psychedelic)[51] <- "CurrConfident"

# I feel nervous
colnames(psychedelic)[52] <- "CurrNervous"

# I feel agitated
colnames(psychedelic)[53] <- "CurrAgitated"

# I feel indecisive
colnames(psychedelic)[54] <- "CurrIndecisive"

# I feel "peaceful"
colnames(psychedelic)[55] <- "CurrPeaceful"

# I feel "at ease"
colnames(psychedelic)[56] <- "CurrEase"

# I am concerned
colnames(psychedelic)[57] <- "CurrConcerned"

# I feel stunned
colnames(psychedelic)[58] <- "CurrStunned"

# I feel balanced
colnames(psychedelic)[59] <- "CurrBalanced"

# I feel good
colnames(psychedelic)[60] <- "CurrGood"




# And generally, how do you feel?
# Mark how you generally feel in relation to each sentence.
# 1- Almost never
# 2- Sometimes
# 3- Often
# 4- Almost always”


# I feel good
colnames(psychedelic)[61] <- "GenGood"

# I feel nervous
colnames(psychedelic)[62] <- "GenNervous"

# I feel "at ease" with myself
colnames(psychedelic)[63] <- "GenAtEase"

# I would like to be as happy as other people seem to be.
colnames(psychedelic)[64] <- "WantHappy"

# I feel like I fail
colnames(psychedelic)[65] <- "GenFail"

# I feel rested
colnames(psychedelic)[66] <- "GenRested"

# I am a calm and serene person
colnames(psychedelic)[67] <- "GenCalm"

# I feel that the difficulties are piling up and I cannot overcome them
colnames(psychedelic)[68] <- "GenDiff"

# I worry too much about unimportant things
colnames(psychedelic)[69] <- "GenWorried"

# I'm happy
colnames(psychedelic)[70] <- "GenHappy"

# I have bad thoughts
colnames(psychedelic)[71] <- "GenBadThoughts"

# I lack self-confidence
colnames(psychedelic)[72] <- "GenLackConf"

# I feel safe
colnames(psychedelic)[73] <- "GenSafe"

# I can decide quickly
colnames(psychedelic)[74] <- "GenDecide"

# I feel out of place
colnames(psychedelic)[75] <- "GenOutOfPlace"

# I feel satisfied
colnames(psychedelic)[76] <- "GenSatis"

# Some unimportant things occupy my head and bother me
colnames(psychedelic)[77] <- "GenOccupied"

# The disappointments affect me so much that I can't get them out of my head.
colnames(psychedelic)[78] <- "GenDisptd"

# I am a stable person
colnames(psychedelic)[79] <- "GenStable"

# When I think about the things I have in hand I get nervous and tense.
colnames(psychedelic)[80] <- "GenTense"


# How did you feel during the last week?
# Mark how you felt during the last week, including today, in relation to each phrase.
# 1- Not at all
# 2
# 3- Moderate
# 4
# 5- A lot

# Interested in things
colnames(psychedelic)[81] <- "LatelyInterested"

# Distressed
colnames(psychedelic)[82] <- "LatelyDistress"

# Excited
colnames(psychedelic)[83] <- "LatelyExcited"

# Affected
colnames(psychedelic)[84] <- "LatelyAffected"

# Strong
colnames(psychedelic)[85] <- "LatelyStrong"

# Guilty
colnames(psychedelic)[86] <- "LatelyGuilty"

# Scared
colnames(psychedelic)[87] <- "LatelyScared"

# Aggressive
colnames(psychedelic)[88] <- "LatelyAggressive"

# Enthusiastic
colnames(psychedelic)[89] <- "LatelyEnthusiastic"

# Satisfied with oneself
colnames(psychedelic)[90] <- "LatelySatisfied"

# Irritable
colnames(psychedelic)[91] <- "LatelyIritated"

# awake
colnames(psychedelic)[92] <- "LatelyAwake"

# Ashamed
colnames(psychedelic)[93] <- "LatelyAshamed"

# Inspired
colnames(psychedelic)[94] <- "LatelyInspired"

# Nervous
colnames(psychedelic)[95] <- "LatelyNervous"

# Decided
colnames(psychedelic)[96] <- "LatelyDecided"

# Concentrated
colnames(psychedelic)[97] <- "LatelyConcentrated"

# Agitated
colnames(psychedelic)[98] <- "LatelyAgitated"

# Active
colnames(psychedelic)[99] <- "LatelyActive"

# Fearful/afraid
colnames(psychedelic)[100] <- "LatelyFearful"


# What did you think and feel during the last month?
# Mark what you thought and how you felt during the last month.
# 1- I Agree
# 2- Neither Agree nor Disagree
# 3- I Disagree


# I think I know what I want to do with my life.
colnames(psychedelic)[101] <- "KnowLife"

# If something goes wrong I can accept it, admit it.
colnames(psychedelic)[102] <- "AcceptWrong"

# I care to think about what I will do in the future.
colnames(psychedelic)[103] <- "CareFuture"

# I can say what I think without major problems.
colnames(psychedelic)[104] <- "SayNoProb"

# People generally like me.
colnames(psychedelic)[105] <- "Likeable"

# I feel that I will be able to achieve the goals I set for myself.
colnames(psychedelic)[106] <- "CanAchieve"

# I have people who help me if I need it.
colnames(psychedelic)[107] <- "HaveHelp"

# I think in general I get along well with people.
colnames(psychedelic)[108] <- "GetAlong"

# In general I do what I want, I am not very influenced.
colnames(psychedelic)[109] <- "DoWtvrWant"

# I am a person capable of thinking about a project for my life.
colnames(psychedelic)[110] <- "CapableThink"

# I can accept my mistakes and try to improve.
colnames(psychedelic)[111] <- "AcceptMistake"

# I can make decisions without much hesitation.
colnames(psychedelic)[112] <- "MakeDecision"

# I face my daily obligations without major problems
colnames(psychedelic)[113] <- "FaceOblig"



# How does each phrase represent you?
# Mark how you think each of the following phrases best represents you.
# 1 - Strongly disagree 
# 2
# 3
# 4- Neither disagree nor agree
# 5
# 6
# 7- Strongly agree

# When I make plans I carry them out to the end.
colnames(psychedelic)[114] <- "CarryPlan"

# I usually handle problems in different ways.
colnames(psychedelic)[115] <- "HandleProb"

# I am able to do things by myself without depending on others.
colnames(psychedelic)[116] <- "Independent"

# I maintain interest in those things that are important to me.
colnames(psychedelic)[117] <- "MaintainImpInterest"

# I tend to take things without much concern.
colnames(psychedelic)[118] <- "LittleConcern"

# I am friendly with myself.
colnames(psychedelic)[119] <- "FriendlyWithSelf"

# I feel like I can handle several things at once.
colnames(psychedelic)[120] <- "HandleThings"

# I am determined.
colnames(psychedelic)[121] <- "Determined"

# I rarely wonder about the purpose of things.
colnames(psychedelic)[122] <- "RarelyWonder"

# I do things one at a time.
colnames(psychedelic)[123] <- "OneAtATime"

# I am self-disciplined.
colnames(psychedelic)[124] <- "SelfDisc"

# I maintain interest in things.
colnames(psychedelic)[125] <- "MaintainInterest"

# I usually find things to laugh about.
colnames(psychedelic)[126] <- "Laugh"

# Confidence in myself allows me to get through difficult times.
colnames(psychedelic)[127] <- "ConfDiffTimes"

# In an emergency I am someone people can trust.
colnames(psychedelic)[128] <- "Trust"

# I can usually see a situation from several points of view.
colnames(psychedelic)[129] <- "DiffPOV"

# My life has meaning.
colnames(psychedelic)[130] <- "LifeMeaning"

# I don't dwell on things I can't do anything about.
colnames(psychedelic)[131] <- "DontDwell"

# When I'm in a difficult situation I usually find a way out.
colnames(psychedelic)[132] <- "FindWayOut"

# I generally have energy to do what I have to do.
colnames(psychedelic)[133] <- "HaveEnergy"

# I feel comfortable if there are people who don't like me.
colnames(psychedelic)[134] <- "ComfDislike"