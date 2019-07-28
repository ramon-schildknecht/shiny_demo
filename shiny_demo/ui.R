#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
    theme = shinythemes::shinytheme("spacelab"),
    
    # Application title
    titlePanel("World Population Data for showing powerful RShiny features"),

    
    
    # Sidebar with a slider input for number of bins
    sidebarLayout(

        sidebarPanel(
            pickerInput(
                inputId = "country", 
                label = "Select/deselect all + format selected", 
                choices = select_country, 
                selected = select_country[1:length(select_country)],
                options = list(
                    `actions-box` = TRUE, 
                    size = 10,
                    `selected-text-format` = "count > 3",
                    `size` = 20,`live-search` = TRUE
                ), 
                multiple = TRUE
            ),
            
            pickerInput(
                inputId = "year", 
                label = "Select/deselect all + format selected", 
                choices = select_year, 
                selected = select_year[1:length(select_country)],
                options = list(
                    `actions-box` = TRUE, 
                    size = 10,
                    `selected-text-format` = "count > 3",
                    `size` = 20,`live-search` = TRUE
                ), 
                multiple = TRUE
            )
            
        ),

        # Show a plot of the generated distribution
        mainPanel(
            DT::dataTableOutput("population_table")
        )
    )
))



