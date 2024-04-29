library(shiny)
library(tidyverse)
library(ggplot2 )

server <- function(input, output) {
    
    output$wordcloud_image <- renderUI({
      img_path <- switch(input$wordcloud_select,
                         "The New York Times" = "nyt_wordcloud.png",
                         "Al Jazeera" = "alj_wordcloud.png",
                         "Time" = "time_wordcloud.png",
                         "BBC" = "bbc_wordcloud.png",
                         "NPR" = "npr_wordcloud.png")
      tags$img(src = img_path, width = "100%")
    })
        
    }
