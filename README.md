# RFPrice
## Introction
A refrigerator is essential for each consumer. Consumers are always concerned about price and so naturally the price of a refrigerator would be very important.  This importance makes it a meaningful subject of study.  However, consumers also want larger refrigerators with lower energy cost and more features.  Our mission on this quest was to figure what characteristics, brands, and manufacturers would affect the price of refrigerators.  We believe that our model provides some insight for consumers to decide on their dream refrigerator.
##
## Data Set
The data set ware drawn from the July, 1992 issue of Consumer Reports entitled “Refrigerators: A Comprehensive Guide to the Big White Box.” This article contains several status and features of refrigerators, including the price of each refrigerator. In this data set, 37 of the refrigerators are randomly selected as the training set. 

As the data description states, the data has 37 observations and 8 columns. Among the 8 variables, BRANDNAM is a categorical variable, and rest of them are numeric variables. The meaning of each variable was shown in the table 1.01. We will concentrate on  the following different characteristics, including the whole size of the refrigerator in cubic feet (RSIZE), the size of the freezer compartment in cubic feet (FSIZE), the average amount of money spent per year to operate the refrigerator (ECOST, energy cost), the number of shelves in the refrigerator and freezer doors (SHELVES), and the number of features (FEATURES). 
By overseeing the data set, we are wishing to build a multiple regression model to predict refrigerator price. The price (Price) is modeled as a function of energy cost (ECOST), the size of the refrigerator (RSIZE), the size of the freezer compartment (FSIZE), the number of shelves (SHELVES), shelf space (S_SQ_FT), the number of features (FEATURES) and the brand name (BRANDNAM).
