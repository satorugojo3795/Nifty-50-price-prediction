Nifty-50-price-prediction

This project is a part of the research internship I did under the supervision of Mr. Akash Varshney and Dr. Dipika

The aim was to predcit the index prices of NIFTY-50

We made the model using recurrent neural networks coupled with LSTM cell
In total we made 4 models - 3 incorporated univariate data and one used multivariate data
We got the least error in model 2 in which we passed univariate date. The mean absolute error was 93.03 and the root mean square error was 135.73.

The architecture of model 2 is as follows

INPUT LAYER(7) -> LAMBDA LAYER() -> LSTM(128,ACTIVATION="relu") -> LSTM(128,activation="relu) -> DENSE(64) -> OUTPUT(1)
