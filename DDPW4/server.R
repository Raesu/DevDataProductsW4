library(shiny)
library(ggplot2)

# Define server logic required to draw a histogram
function(input, output, session) {

  output$plot <- renderPlot({
      # generate bins based on input$bins from ui.R
    storms |> filter(status %in% input$statusCheckbox) |>
      ggplot(aes(year, pressure, color=status)) +
      geom_point(alpha=.3, show.legend=FALSE) + facet_wrap(~status) +
      geom_smooth(method='lm', color='blue', formula='y ~ x')
  })

}
