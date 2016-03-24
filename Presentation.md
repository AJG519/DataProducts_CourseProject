Developing Data Products Project: Predicting Vehicle MPG
========================================================
author: Andrew Gaidus
date: March 24,2016

Introduction
========================================================

The shiny app created for this project allows a user to enter some attributes about their vehicle and obtain a prediction for its MPG. The app uses a GLM model that predicts MPG based on the "mtcars" dataset in the "datasets" library in R.


The prediction algorithm
========================================================


```r
library(datasets)
library(caret)
library(RCurl)
```


```r
mtcars$wt2=mtcars$wt*1000
modFit <- train(mpg ~ cyl + disp + hp + wt2+gear+carb, method="glm", data=mtcars)
```

GLM Model Results Summary
========================================================


```
Generalized Linear Model 

32 samples
11 predictors

No pre-processing
Resampling: Bootstrapped (25 reps) 
Summary of sample sizes: 32, 32, 32, 32, 32, 32, ... 
Resampling results

  RMSE      Rsquared   RMSE SD    Rsquared SD
  3.032272  0.8061851  0.7387222  0.06581264 

 
```

Conclusion
========================================================
The algorithm and association application provide a simple way to estimate MPG relatively accurately. 

Try it out [here](https://agaidus.shinyapps.io/CourseProject/)


