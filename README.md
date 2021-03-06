# RFPrice
## Introduction
A refrigerator is essential for each consumer. Consumers are always concerned about price and so naturally the price of a refrigerator would be very important.  This importance makes it a meaningful subject of study.  However, consumers also want larger refrigerators with lower energy cost and more features.  Our mission on this quest was to figure what characteristics, brands, and manufacturers would affect the price of refrigerators.  We believe that our model provides some insight for consumers to decide on their dream refrigerator.
##
## Data Set
The data set ware drawn from the July, 1992 issue of Consumer Reports entitled “Refrigerators: A Comprehensive Guide to the Big White Box.” This article contains several status and features of refrigerators, including the price of each refrigerator. In this data set, 37 of the refrigerators are randomly selected as the training set. 
<p align="center">
  <img src="https://github.com/Israfiliya/RFPrice/blob/master/pasted%20image%200.png">
</p>
As the data description states, the data has 37 observations and 8 columns. Among the 8 variables, BRANDNAM is a categorical variable, and rest of them are numeric variables. The meaning of each variable was shown in the table 1.01. We will concentrate on  the following different characteristics, including the whole size of the refrigerator in cubic feet (RSIZE), the size of the freezer compartment in cubic feet (FSIZE), the average amount of money spent per year to operate the refrigerator (ECOST, energy cost), the number of shelves in the refrigerator and freezer doors (SHELVES), and the number of features (FEATURES). 
By overseeing the data set, we are wishing to build a multiple regression model to predict refrigerator price. The price (Price) is modeled as a function of energy cost (ECOST), the size of the refrigerator (RSIZE), the size of the freezer compartment (FSIZE), the number of shelves (SHELVES), shelf space (S_SQ_FT), the number of features (FEATURES) and the brand name (BRANDNAM).

## Model Building
The Stepwise Regression is used to determine the independent variable used to add into the model. we will use Adjusted Rsq, Cp and BIC as evaluation principal.
<p align="center">
  <img src="https://github.com/Israfiliya/RFPrice/blob/master/vs-regression.jpg">
</p>
By comparing the Adjusted Rsq, Cp and BIC, we conclude that 15 variables should be included in the model. Among these 15 variables, there are 5 numeric variables (ECOST, FSIZE, SHELVES, S_SQ_FT, FEATURES ) and 10 brand names (Amana, Frigidaire, Gibson, Kelvintr, Kitchen Aid, Magic Chef, Montgomery Ward, RCA, Sears Kenmore, Tappan).

#### The final model equation:
> Price=-404.26143-8.53403*ECOST+197.97874*FSIZE+31.56212*SHELVES+18.06407*SSQ FT+10.12353*FEATURES
> Also plus following value corresponding to the brand name

|Value |Brand Name
|------|----------|
|126.70162 |Amana
|190.60726 |Frigidaire
|129.05084 |Gibson
|169.50441 |Kelvintr
|98.17029 |Kitchen Aid
|-85.42586 |Magic Chef
|-124.31307 |Montgomery Ward 
|42.48798 |RCA
|181.63233 |Sears Kenmore 
|148.31460 | Tappan|

###### A quick example
Assume we have a refrigerator with the following status:

|ECOST|FSIZE|SHELEVES|S_SQ_FT|FEATURES|BRANDNAME|
|-----|-----|--------|-------|--------|---------|
|68|5.1|2|23.4|3|Tappan|

Then the predict price of this refrigerator is around:
> -404.26143-8.5340368+197.978745.1+31.562122+18.0640723.4+10.123533+148.31460 
> =689.624772 dollors

## Model Adequacy
By analyzing the global F test, confidence intervals for each parameters, Root MSE and CV, we have the following results:
* Global F test (P-value < 0.001) indicates that the model is significant for predicting the price of refrigerators based on a group of independent variables in the model.
* The valueof R-Square is .97 which means approximately 97% of the variation of invoice is explained by the independent variables.  Given Root MSE was 25.67, approximately 95% of the sampled Refrigerator price values fall within two standard deviations (51.34) of their respective predicted values.
* Based on t-test with significant level  (Alpha)equals .05, the p-values for ECOST, FSIZE, SHELVES, S_SQ_FT, FEATURES, Amana, frigidaire, gibson, kelvintr, kitchen aid, magic chef, montgomery ward, Sears Kenmore, and Tappan  are less than .05 indicating sufficient evidence for predicting the refrigerator price.  Each i parameter  represents the mean change in the response variable (y) for every 1-unit increase in the corresponding  xiwhen all the other x’s are held fixed.  For example, the price of the fridge will increase by 31.562 each 1 shelf that a refrigerator gains.
* A 95% confidence interval for shelves is (15.18,47.95).  This means that we are 95% confident that the price of a refrigerator increases between 15.18 and 47.95 for every 1 shelf that is added.

## Assumptions Checking
Serveral graphical tools and statistical tests are applied to check whether the key assumptions of linear regression is met or not.
<p align="center">
  <img src="https://github.com/Israfiliya/RFPrice/blob/master/rs_qq-regression.jpg">
</p>
According to Figure above, which is the residuals plotted against the predicted values, there is no pattern or trends.  If there are any patterns such as the “cone” or “sphere” shapes, this indicates the lack of model fit and unequal variances. Also the Q-Q plot shows a linear trend with a slight deviation at the tail, but since the normality assumption is least restrictive among all the assumptions, we believe in our case, the normality assumption is satisfied. The Durbin-Watson Test statistic is 2.62007, which should be considered close to 2, so the residuals are uncorrelated and the independent error assumption is meeted.
<p align="center">
  <img src="https://github.com/Israfiliya/RFPrice/blob/master/df_ck_lv-regression.jpg">
</p>
Diffit Measure indicate that No.14 and No.18 has a value greater than 2sqrt(p/n), so there is a potential that these two points are influential. From the middle figure, we can knowing that all the Cook’s D value is less than 1, which suggests all the points are fluential. The last Leverage Measurements chart (last figure) shows that there maybe 4 points are influential. Overall, we can assume that there is little influential points.

## Conclusion
In our analysis we sought to determine which refrigerator characteristics were predictive of high refrigerator prices through the use of a stepwise regression model.  Our analysis has shown that energy cost, freezer size, number of shelves, amount of shelf space, number of features, and 9 of the brand names correlate strongly with refrigerator cost and are predictive characteristics. The rest of the brand names and the size of the refrigerator do not correlate strongly with refrigerator price and are not predictive characteristics.
