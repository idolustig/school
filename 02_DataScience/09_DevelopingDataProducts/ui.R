library(shiny)

shinyUI(
        # Multi-tab UI
        navbarPage("Israeli Lorrety Results 1994-2015", 
                   # Explore Results
                   tabPanel("Explore Results",
                            sidebarPanel(
                                    # dates range selector
                                    dateRangeInput("timeline", 
                                                "Timeline:", 
                                                min = "1994-03-08",
                                                max = Sys.Date()-10,
                                                start = "2015-01-01",
                                                end = Sys.Date()-10),
                                    # number of most frequent results
                                    sliderInput("tops", 
                                                "Number of Top Results:",
                                                min = 1,
                                                max = 10,
                                                value = 5
                                    )
                            ),
                            mainPanel(
                                    tabsetPanel(
                                            # Most frequent 
                                            tabPanel(p(icon("refresh"),
                                                       "Most Frequent"),
                                                     textOutput("topstext"),
                                                     tableOutput("topNums")
                                            ), # end of Most frequent
                                            # Data Visiulization
                                            tabPanel(p(icon("bar-chart"),
                                                       "Data Visualization"), 
                                                     h4('Drawn numbers frequency in the selceted timeframe',
                                                        align = "center"),
                                                     plotOutput("numbersPlot")
                                            ), # end of "Visualize the Data" tab panel
                                            # Raw Data
                                            tabPanel(p(icon("table"), "Raw Data"),
                                                     h4('Raw data in the selected timeframe',
                                                        align = "center"),
                                                     dataTableOutput("subsetData")
                                            ) # end of Raw Data
                                    )
                            )     
                   ), # end of Explore Results
                   # Help/About
                   tabPanel("Help/About",
                            mainPanel(
                                    includeMarkdown("About.md")
                            )
                   ) # end of Help/About
                   )
        
        ) 
