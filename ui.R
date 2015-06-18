shinyUI(
    fluidPage(
        # Application title
        titlePanel("Prediction of miles per gallon"),
        
        sidebarLayout(
            sidebarPanel(
                h3('Enter values here'),
                selectInput("cyl", "Pick the number of cylinders in your car",
                            c("4" = "4",
                              "6" = "6",
                              "8" = "8")),            
                sliderInput('hp', 'Move the slider to the horsepower of your car', min=55, max=335, value=123, step=5),
                sliderInput('wt', 'Move the slider to the weight (in lb/1000) of your car', min=1.5, max=5.5, value=3.3, step=0.5),
                submitButton('Submit')
            ),
            mainPanel(
                p("This app allows you to predict the miles per gallon of a car by entering 
                  the number of cylinders, the horsepower and the weight of the car. Enter your values 
                  in the left panel, press submit and see the results below."),
                h3('See results here'),
                h4('You entered'),
                verbatimTextOutput("inputs"),
                h4('Prediction for mpg'),
                verbatimTextOutput("predict")
            )
        )
    )
)