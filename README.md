# MechaCar_Statistical_Analysis

<a href="https://github.com/cmason1996/MechaCar_Statistical_Analysis/blob/main/MechaCarChallenge.R" target="_blank">Click here to view the MechaCarChallenge.R file</a>

## Project Overview

The purpose of this analysis is to run statistical tests on the MPG and suspension coils on prototype cars for AutosRUs. In the analysis linear regression models are run on the MPG data to see if there is any statistical means to predict the MPG of future cars. As well as summary statistics on the suspension coils and later run t.test() on the suspension coil data to see if there is any statistical differnce between the different manufacturing lots. 

## Equipment Used:
* Rstudio version: 2022.12.0+353
* R version: 4.2.2 "Innocent and Trusting"
* Machine: x86_64-apple-darwin17.0 (64-bit)
* Data: MechaCar_mpg.csv & Suspension_Coil.csv

## Linear Regression to Predict MPG

<img width="729" alt="linear_regression" src="https://user-images.githubusercontent.com/112291888/209743181-61e9dba5-a82b-404b-a0be-5a4ec59eba07.png">

<img width="476" alt="linear_regression_summary" src="https://user-images.githubusercontent.com/112291888/209743188-e0421901-c675-4750-833c-0a71c26b0d4a.png">

* The variance of non-random variables is typically 0. Given this, the intercept, vehicle length, and ground clearance coefficients can be assumed to be non-random variables and would therefore not give a siginificant amount of variance to the MPG values. This is most likely due to the fact that the vehicle length and ground clearance do not change on a vehicle after the production stage.
* At a significance level of 0.05 we are able to reject the null hypothesis of the slope of our line being 0. Our p-value was 5.35e-11 which is much smaller than our siginficance level. 
* Looking at the adjusted r-value, which controls for the number of variables passed through the regression model, we are able to tell that this model would be statistically accurate at predicting the MPG values of prototype cars manufactured by MechaCars. With an adjusted r-value of 0.6825 we would be able to accurately predict MPG values 68.25% of the time.

## Summary Statistics on Suspension Coils

<img width="297" alt="totals_summary" src="https://user-images.githubusercontent.com/112291888/209743243-6f6b0793-ec0b-4714-ab68-9c5a6f1e317a.png">

<img width="435" alt="lot_summary" src="https://user-images.githubusercontent.com/112291888/209743249-3e6fb8d6-82fa-49ef-9276-b34dc7324525.png">

* Looking at the total_summary of all of the manufacturing lots we see that the variance is 62.29356 and is well within the limit of 100 PSI of variance. However, when we break down the analysis to look at all three manufacturing lots we see that while the Lot1 and Lot2 are within the tolerance levels, Lot3 well exceeds the 100 PSI varience and would lead to future failures or an uneven distribution of weight on all contact points with the ground should any units from that manufacturing lot make it into production. 

## T-Tests on Suspension Coils

<img width="367" alt="population_t_test" src="https://user-images.githubusercontent.com/112291888/209743297-7eff48ed-d79e-45f6-9902-89ecd6957214.png">

Using a siginficance level of 0.05 we are unable to reject the null hypothesis as our p-value is 0.06028. Meaning that we cannot reject our sample mean being close to our population mean. A point of interest is that our confidence interval is very narrow for this t-test and the the subsequent t-tests run on the three different manufacturing lots of suspension coils. While this means that we have a narrow probability of observing values in this range is also means that we will have greater accuracy overall with our data.

<img width="369" alt="lot_t_test" src="https://user-images.githubusercontent.com/112291888/209743301-7f7679d3-f737-457b-a629-37e4482d437e.png">

### Lot1

Using a siginficance level of 0.05 and with a p-value of 1 we do not have siginficant evidence to reject the null hypothesis and must move forward with the assumption that the means of our sample data as well as the assumed population data are statistically similar.

### Lot2

Staying consistent with the siginficance level of 0.05 and with a p-value of 0.6072 we do not have siginficant evidence to reject the null hypothesis and must move forward with the assumption that the means of our sample data as well as the assumed population data are statistically similar.

### Lot3

Still using the siginificance level of 0.05 and a p-value of 0.04168, we have siginficant evidence to reject the null hypothesis that the sample and population means are statistically similar. For Lot3, our sample mean and our assumed population mean are statistically different. Something to note about Lot3 is that the mean of the sample does not fall into the 95% confidence interval of 1492.431 - 1499.849.

## Study Design: MechaCar vs Competition

* For future statistical analysis it would be interesting to see a comparison between MechaCar prototypes and other manufactures for vehicles in the same classes. As a car buyer, individuals look at a number of variables to make there decisions from; such as MPG, vehicle size, capabilities (such as offroad), amenities (such as heated seats), and overall curb appeal. I would be interested in the last category; how does the appearance of a car, and subsequently how it is marketed, influence the buyer in their decision? 
    * Metrics that would influence a potential buyer regarding appearance to look into would be color, size, shape, and interior materials. Whereas metrics to study that would influence a buyer's decision regarding marketing would be how many commercials the consumer saw about the vehicle or manufacturer, where did they learn about the car, do the manufacturers marketing tactics inspire trust in their consumers?
    * NULL HYPOTHESIS: The appearance of a car and how a consumer learns about the car will not have a significant influence on the decision to purchase the vehicle.
    * ALTERNATIVE HYPOTHESIS: The appearance of a car and how the manufactuere market their products will have a significant influence on the consumer's decision to purchase the vehicle.
    * To run this analysis I would use linear regression to compare the dependent and independent variables as well as to determine if the collected data was statistically significant in being able to predict the outcome of buying decisions. As well as one-sample t-tests to determine if the collected data was representative of the overall population data; this will help to determine if the data collected is not skewed by the method of collection or where and from whom the data was collected.
    * To run this test the data about the vehicles needed to be collected would be metrics about color, shape, interior apperance, and if possible, a ranking of how stylish cars appear to be. The data needed on the manufacturer's marketing tactics would be how often ads are run; are the ads on social media, streaming services, or television; do the ads play on the human psyche by inspiring our need to, in essence, "Keep up with the Joneses"? When collecting the data, it may be needed to create ranking systems for various categories such as style; and to assign a number system to other variables, such as color, shape, social media vs televison.
