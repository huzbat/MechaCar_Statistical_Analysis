# MechaCar_Statistical_Analysis


## Linear Regression to Predict MPG

Multiple Linear Regression model made to predict MechaCar fuel efficiency taking all factors into communication.
P-value found to be 5.35e-11, significantl smaller than level of 0.05%. The slope is not zero, so we may reject the null hypothesis.
R-squared value of 0.7149, nearly 72% of MechaCar prototypes' mpg variability  are encapsulated by these figures


## Summary Statistics on Suspension Coils

Variation for suspension coils CANNOT exceed 100 pounds/(inch)^2. 


![](Resources/total_summary.PNG)

Vriance at 62.29 falls well under 100 pounds/(inch)^2. 

Lot 1 the the most accurate with a variance of 0.98.
Lot 2 is semi-accurate with a variance of 7.47
Lot 3 variance is greater than 100 pounds/(inch)^2 with a variance of 170.27!

![](Resources/lot_summary.PNG)

Lot 3's suspension coils needs to be cross examined.



## T-Tests on Suspension Coils

HCheck for statistical variation across all of MechaCar's manufacturing lots comparing population mean of 1,500 pounds/(inch)^2.

*All Lots*

![](Resources/T_All.PNG)

    -P-value was 0.06028 which is above the significance level of 0.05, therefore it is not statistically different from population mean and we do *not have* sufficient evidence to reject the null hypothesis.

*Each Individual Lot*

![](Resources/T_Lot1.PNG)

    -Lot 1's p-value of 1 is significantly greater than significance level of 0.05, therefore it is not statistically different from population mean and we do *not have* sufficient evidence to reject the null hypothesis.

![](Resources/T_Lot2.PNG)

    -Lot 2's p-value of 0.6072 is greater than significance level of 0.05, therefore it is not statistically different from population mean and we do *not have* sufficient evidence to reject the null hypothesis.

![](Resources/T_Lot3.PNG)

    -Lot 3's p-value of 0.04168 is less than significance level of 0.05, therefore it is statistically different from population mean and we do *have* sufficient evidence to reject the null hypothesis.


## Study Design: MechaCar vs Competition

### Metric to Test

    -Towing capacity in pounds(lbs) gathered from all competitors.

### Hypotheses

- Null: MechaCar has the same towing capacity vs. competition's.
- Alternate: MechaCar has a lower/greater towing capacity vs. competition's.

### Statistical Test

- A Two-sample t-test is optimal for performace,  meaning to determine if two samples are statistically different. 

### Required Data

Towing capacity from all competitors to test safety ratings of MechaCar's vehicles and the mean values running multiple two-sample t-test. 

### Next Steps
Create a design comparing MechaCar's safety rating vs. competition's. Depending on two-sample t-test results, further testing and visualization can be run to examine each difference.