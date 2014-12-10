shinyUI(pageWithSidebar(
        headerPanel("Fuel Consumption Estimation"),
        sidebarPanel(
                radioButtons("transmission","Transmission:",
                             list("Automatic"="0","Manual"="1")),
                radioButtons("cylinder","Number of Cylinders:",
                             list("4 Cylinders"="4","6 Cylinders"="6","8 Cylinders"="8")),
                textInput(inputId="weight",label="Weight of the car (in 1000lb)"),
                textInput(inputId="horsepower",label="Car HP"),
                sliderInput("confint","Confidence Interval:",0,1,0.05),
                submitButton('Submit')
        ),
        mainPanel(
                tabsetPanel(
                        tabPanel("Result",verbatimTextOutput("result")),
                        tabPanel("Plot",plotOutput("plot"))
                )
        )
))