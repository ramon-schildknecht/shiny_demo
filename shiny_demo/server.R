#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
    
    output$population_table <- DT::renderDataTable({
        d %>% 
            filter(country %in% input$country) %>% 
            filter(year %in% input$year)
            
    }, selection = 'none', server = TRUE, editable = TRUE,
    filter = 'top')
    
})
