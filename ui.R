library(shiny)
library(caret)
shinyUI (
  pageWithSidebar (
    # Application title
    headerPanel ("Predict Your Vehicle's Gas Mileage"),
    
    sidebarPanel (
      numericInput('cyl', 'Number of Cylinders', 4, min = 3, max= 8, step = 1),
      numericInput('disp', 'Displacement (cu.in.)', 190, min = 70, max= 450, step = 10),
      numericInput('hp', 'Gross horsepower', 100, min = 50, max= 275, step = 5),
      numericInput('wt2', 'Weight (lbs)', 3000, min = 1500, max= 5500, step = .5),
      numericInput('gear', 'Number of forward gears', 4, min = 3, max= 5, step = 1),
      numericInput('carb', 'Number of Carburetors', 3, min = 1, max= 8, step = 1),
      submitButton('Submit')
    ),
    mainPanel (
      h3 ('Results'),
      h4 ('Your Vehicle\'s Predicted MPG (US Gallon):'),
      textOutput("prediction")
    )
  )
  
)