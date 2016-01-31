library(shiny)
library(datasets)
require(graphics)
shinyUI(fluidPage(
  headerPanel(img(src = "ddp.jpg"), h1("Developing Data Products: Final Assignment") ),
  
  # description and input
  sidebarPanel(
    h3('Input Panel'),
    p('Here we can handle mtcars dataset.'),
    p('Select the predictor variable with mpg as outcome:'),
    selectInput('x', label='Predictor', selected='cyl', choices=names(mtcars)),
    p('It is possible to choose the line color.'),
    selectInput('color', label='Color', choices=palette()),
    h3('Documentation'),
    p("This project uses the basic 'mtcars' dataset to plot the",
      "regression model using two variables of this dataset:",
      "one as predictor, what we have to choose, and the",
      "other is 'mpg' as the outcome.")),
  
  # plot and output
  mainPanel(
    div(h2("Developing Data Products: Coursera Project", style="color:#ff6600;margin:-65px 0px 10px 20px;")),
    h4('Summary of Selected Attribute'),
    h4(verbatimTextOutput("summary")),
    h4(textOutput('text')),
    plotOutput('myPlot'))
  
))