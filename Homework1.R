# Econometrics Data
#  set directory
setwd("C:/Users/karlk/Desktop/EconometricsData/R data sets for 5e")

load("BWGHT.Rdata")

names(data)
View(desc)

# Number of females
nrow(subset(data, male == 0))
females <- subset(data, male == 0)

# Average number of cigs
mean(data$cigs)
sum(data$cigs)/nrow(data)

males <- subset(data, male == 1)
mean(males$cigs)
mean(females$cigs)
mean(data$cigs)
dim(data$cigs)



CigsF <- subset(females, cigs > 0)

NoCigsM <- subset(males, cigs == 0)

# Check how many fathers have education
nrow(subset(data, fatheduc != 0))
FathEduced <- subset(data, fatheduc != 0)

# Average Fathers Education
mean(data$fatheduc, na.rm = TRUE)

# Familys income and standard deviation

mean(data$faminc)
summary(data$faminc)

finc <- data$faminc
sd(finc)

View(data$faminc)
