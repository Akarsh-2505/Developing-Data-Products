library(shiny)

shinyUI(
  navbarPage("Shiny Application",
             tabPanel("Analysis",
                      fluidPage(
                        titlePanel("The relationship between variables and miles per gallon (MPG)"),
                        sidebarLayout(
                          sidebarPanel(
                            selectInput("variable", "Variable:",
                                        c("Number of cylinders" = "cy",
                                          "Displacement (cu.in.)" = "d",
                                          "Gross horsepower" = "hp",
                                          "Rear axle ratio" = "rat",
                                          "Weight (lb/1000)" = "weight",
                                          "1/4 mile time" = "qsec",
                                          "V/S" = "vs",
                                          "Transmission" = "tram",
                                          "Number of forward gears" = "gear",
                                          "Number of carburetors" = "carburators"
                                        )),
                            
                            checkboxInput("outliers", "Show BoxPlot's outliers", FALSE)
                          ),
                          
                          mainPanel(
                            h3(textOutput("caption")),
                            
                            tabsetPanel(type = "tabs", 
                                        tabPanel("BoxPlot", plotOutput("mpgBoxPlot")),
                                        tabPanel("Regression model", 
                                                 plotOutput("mpgPlot"),
                                                 verbatimTextOutput("fit")
                                        )
                            )
                          )
                        )
                      )
             ),
             tabPanel("About the Data Set",
                      
                      h3("Regression Models Course Project (from Coursera)"),
                      helpText("The motor trend magazine that youu work for is looking for a relationship ",
                               "between a few parameters and miles per gallon (MPG) (outcome). They are basically looking for an answer to the question that whether automatic or manual transmission is better in case of MPG. Calculate the results and show the analysis."),
                      h3("Important"),
                      p("Number of observations 32, 11 variables"),
                      
                      a("https://class.coursera.org/regmods-008")
             ),
             tabPanel("More Data Detail",
                      h2("Motor Trend Car Road Tests"),
                      hr(),
                      h3("Description"),
                      helpText("The extraction of this data has been done from a US magazine known as Motor Trend",
                               " and it comprises of the fuel consumptions and other 10 aspects of vehicular design and perf.",
                               " for 32 different vehicles(1973-74 models)."),
                      h3("Format"),
                      p("Number of observations 32, 11 variables."),
                      
                      p("  [, 1]   mpg         Miles/(US) gallon"),
                      p("  [, 2]	 cyl	 Number of cylinders"),
                      p("  [, 3]	 d	 Displacement (cu.in.)"),
                      p("  [, 4]	 hp	 Total brake horsepower"),
                      p("  [, 5]	 rat	 Rear axle ratio"),
                      p("  [, 6]	 w	 Weight (lb/1000)"),
                      p("  [, 7]	 q	 1/4 mile time"),
                      p("  [, 8]	 vs	 V/S"),
                      p("  [, 9]	 gt	 gear trans. (0 = automatic, 1 = manual)"),
                      p("  [,10]	 gr	 Number of forward gears"),
                      p("  [,11]	 cb	 Number of carburetors"),
                      
                      h3("Source"),
                      
                      p("Biometrics, 37, 391-411, Building regression models interactively, Henderson and Vellman(1981)")
             ),
             tabPanel(
                      a("https://github.com/amritj/Developing-Data-Products-Week-4-Assignment"),
                      hr(),
                      h4("I hope you like the Shiny App"),
                      h4("The name of the repository is Developing Data Products Week 4 Assignment")
             )
  )
  
  
)