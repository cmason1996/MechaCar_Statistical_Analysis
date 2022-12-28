# MechaCar_Statistical_Analysis

<a href="https://github.com/cmason1996/MechaCar_Statistical_Analysis/blob/main/MechaCarChallenge.R" target="_blank">Click here to view the MechaCarChallenge.R file</a>

## Project Overview

The purpose of this analysis is to run statistical tests on the MPG and suspension coils on prototype cars for AutosRUs. In the analysis linear regression models are run on the MPG data to see if there is any statistical means to predict the MPG of future cars. As well as summary statistics on the suspension coils and later run t.test() on the suspension coil data to see if there is any statistical differnce between the different manufacturing lots. 

## Linear Regression to Predict MPG

insert the pictures of the linear regression models here

* The variance of non-random variables is typically 0. Given this, the intercept, vehicle length, and ground clearance coefficients can be assumed to be non-random variables and would therefore not give a siginificant amount of variance to the MPG values. This is most likely due to the fact that the vehicle length and ground clearance do not change on a vehicle after the production stage.
* At a significance level of 0.05 we are able to reject the null hypothesis of the slope of our line being 0. Our p-value was 5.35e-11 which is much smaller than our siginficance level. 
* Looking at the adjusted r-value, which controls for the number of variables passed through the regression model, we are able to tell that this model would be statistically accurate at predicting the MPG values of prototype cars manufactured by MechaCars. With an adjusted r-value of 0.6825 we would be able to accurately predict MPG values 68.25% of the time.

## Summary Statistics on Suspension Coils

insert pictures of total_summary and lot_summary here

* Looking at the total_summary of all of the manufacturing lots we see that the variance is 62.29356 and is well within the limit of 100 PSI of variance. However, when we break down the analysis to look at all three manufacturing lots we see that while the Lot1 and Lot2 are within the tolerance levels, Lot3 well exceed the 100 PSI varience and would lead to future failures or an uneven distribution of weight on all contact points with the ground should any units from that manufacturing lot make it into production. 

## T-Tests on Suspension Coils

insert picture of single t test here

Using a siginficance level of 0.05 we are unable to reject the null hypothesis as our p-value is 0.06028. Meaning that we cannot reject our sample mean being close to our population mean. A point of interest is that our confidence interval is very narrow for this t-test and the the subsequent t-tests run later on the three different manufacturing lots of suspension coils. While this means that we have a smalled probability of observing values in this range is also means that we will have greater accuracy overall with our data.

insert picture of lot t tests here

### Lot1



### Lot2



### Lot3



## Study Design: MechaCar vs Competition