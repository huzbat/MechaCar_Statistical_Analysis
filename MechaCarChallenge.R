#Load dplyr package
library(dplyr)

# Deliverable 1

#Importing dataset
mechacar <- read.csv(file='MechaCar_MPG.csv',check.names = F,stringsAsFactors = F)

#examine dataset
head(mechacar)

#Perform linear regression utilizing mpg + mechacar as data
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar)

#retrieve summary statistics of function to find p-value and r-squared value
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar))



# Deliverable 2

#mporting dataset
suspension <- read.csv(file='Suspension_Coil.csv',check.names = F,stringsAsFactors = F)

#examine dataset
head(suspension)

#create a summary dataframe of PSI's statistics
total_summary <- suspension %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

#create a summary dataframe of PSI's statistics grouped per lot
lot_summary <- suspension %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))



# Deliverable 3

#t-test 
#true mean of PSI statistically different than population mean (true/false)
t.test(suspension$PSI, mu=1500)

#t-test to determine if PSI across each manufacturing lot is statistically different than population mean
t.test(subset(suspension, Manufacturing_Lot == "Lot1")$PSI, mu=1500)
t.test(subset(suspension, Manufacturing_Lot == "Lot2")$PSI, mu=1500)
t.test(subset(suspension, Manufacturing_Lot == "Lot3")$PSI, mu=1500)




