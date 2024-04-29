library(shiny)

ui <- fluidPage(
    
    titlePanel(title = "The Bias Detector"),
    
    sidebarLayout(
        
        sidebarPanel(
        
        selectInput("wordcloud_select", "Select a Source:",
                    choices = c("The New York Times", "Al Jazeera", "Time", "BBC", "NPR"),
                    selected = "The New York Times")
        
     ),
    
    mainPanel(
        uiOutput("wordcloud_image")
        )
    )
)