library(datasets)
library(caret)
library(RCurl)
mtcars$wt2=mtcars$wt*1000
modFit <- train(mpg ~ cyl + disp + hp + wt2+gear+carb, method="glm", data=mtcars)

shinyServer(
  function(input, output) { 
    output$prediction <- renderPrint ({
      cyl = input$cyl
      disp = input$disp
      hp = input$hp
      wt2 = input$wt2
      gear=input$gear
      carb=input$carb
      predict(modFit,data.frame(cyl, disp, hp, wt2, gear, carb))})
  }
)