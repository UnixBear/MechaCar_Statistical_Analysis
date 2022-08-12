<img src="https://user-images.githubusercontent.com/101137700/182009559-2af021c9-c60b-4247-9f4a-6e44b9909398.png">

## Linear Regression to Predict MPG

<div id="header" align="center">
  <img src="images/MechaSummary.png"/>
</div>

The goal of this linear model is to answer three questions:
1) Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

2) Is the slope of the linear model considered to be zero? Why or why not?

3) Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

Running lm() on our data solving for Miles per Gallon(mpg), we used vehicle length, weight, spoiler angle, ground clearance and the car's all wheel drive stats to find the significance of each value on mpg. As a reminder, the higher the variance contribution on an independent variable, the less impact it will have.


<ul>
    <li><b>Vehicle Length</b>
        <ul>
            <li>Variability Contribution: negligiable (Pr < 0.1%)</li>
        </ul>
    </li>
    <li><b>Vehicle Weight</b>
        <ul>
            <li>Variability Contribution: 7.8%</li>
        </ul>
    </li>
    <li><b>Spoiler Angle</b>
        <ul>
            <li>Variability Contribution: 30.7%</li>
        </ul>
    </li>
    <li><b>Ground Clearance</b>
        <ul>
            <li>Variability Contribution: negligiable: (Pr < 0.1%)</li>
        </ul>
    </li>
    <li><b>All Wheel Drive</b>
        <ul>
            <li>Variability Contribution: 18.5%</li>
        </ul>
    </li>
    <li><b>P-Value</b>
        <ul>
            <li>0.00000000000535, which is negliable.</li>
            <li>P-Value < 0.05 <ul> <li>Null Hypothesis: rejected</ul></li>
</ul></ul>

<b>Question 1:</b>
    Vehicle Length and Ground Clearance have the least likely chance of providing random variance

<b>Question 2:</b>
    The slope should not be considered 0 because there are three independent variables that had significant contributions,

<b>Question 3:</b>
    If one considers a model that has ~70% prediction accuracy to be effective, then this would be an effective model (Multiple r-squared values of 0.714)



## Summary Statistics on Suspension Coils
<img src="images/SuspensionCoilSummary.png"/>
<img src="images/SuspensionCoilSummaryTotal.png"/>

Here we look at 150 different vehicles which are assigned to one of 3 lots, all with unique IDs. The only data we have associated with each vehicle is the pressure on the suspension coils.  We're going to look some fairly general states of the lots and of the batch of 150 vehicles, specifically the mean, median, variance, and to a lesser extend the standard deviations.  We also want to answer a specific question:
<ul><li>The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not</li></ul>

While the overall variance, as shown in the Total Summary data above, is under 100 psi and meets specifications, there is a problem with one of the individual lots. As shown in the Lot Summary stats, the variance for Lot 3 is well over the acceptable threshold, at 170.28.

