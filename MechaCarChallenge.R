mechaCarMpg <- read.csv("MechaCar_mpg.csv", stringsAsFactors = F) #Loading mpg dataset
library(dplyr) #imporing dplyr library
mechaLinear <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mechaCarMpg) #creating linear model
mechaPvals <- temp$coefficients[,4]
summary(mechaLinear)

suspensionCoil <- read.csv("Suspension_Coil.csv", stringsAsFactors = F) #Loading suspension coil dataset
total_summary <- suspensionCoil %>% summarize(Mean=mean(PSI), Median=median(PSI),Variance=var(PSI), StdDev=sd(PSI)) #Create basic summary dataframe
lot_summary <- suspensionCoil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI),Variance=var(PSI), StdDev=sd(PSI)) #create summary dataframe per lot
