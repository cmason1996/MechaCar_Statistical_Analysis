# Load in the dplyr package
library(dbplyr)

# Import the MechaCar_mpg.csv file
MechaCar_mpg <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)

# Create a linear model of the dataframe using all 6 columns and the dataframe as the data parameter
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, MechaCar_mpg)

# Coefficients:
#   (Intercept)    vehicle_length    vehicle_weight     spoiler_angle  ground_clearance               AWD  
#    -1.040e+02         6.267e+00         1.245e-03         6.877e-02         3.546e+00        -3.411e+00

# Use the summary() funtion to determine the p-value and the r-squared value for the linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, MechaCar_mpg))

# Residuals:
#   Min       1Q   Median       3Q      Max 
#  -19.4701  -4.4994  -0.0692   5.4433  18.5849 

# Coefficients:
#                     Estimate Std. Error t value Pr(>|t|)    
#  (Intercept)      -1.040e+02  1.585e+01  -6.559 5.08e-08 ***
#  vehicle_length    6.267e+00  6.553e-01   9.563 2.60e-12 ***
#  vehicle_weight    1.245e-03  6.890e-04   1.807   0.0776 .  
#  spoiler_angle     6.877e-02  6.653e-02   1.034   0.3069    
#  ground_clearance  3.546e+00  5.412e-01   6.551 5.21e-08 ***
#  AWD              -3.411e+00  2.535e+00  -1.346   0.1852    
#  ---
#  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

#  Residual standard error: 8.774 on 44 degrees of freedom
#  Multiple R-squared:  0.7149,	Adjusted R-squared:  0.6825 
#  F-statistic: 22.07 on 5 and 44 DF,  p-value: 5.35e-11

# Import the Suspension_Coil.csv file
Suspension_Coil <- read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F)

library(tidyverse)

# Create a dataframe to hold the summary statistics data for the Suspension_Coil.csv
total_summary <- summarize(Suspension_Coil, Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

# Create a dataframe to hold summary statistics for Suspension_Coil.csv grouping by lot number
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))






