library(shiny)
library(tidyverse)

# Define UI for application that draws a histogram
fluidPage(
  # Application title
  titlePanel("Data Products Week 4 Project"),
  strong('Instructions'),
  p(str_c('Use the check boxes below to update facets in the chart on the right.',
          ' It shows pressure trends over time for each storm status.',
          ' It also fits a linear model to the data. Enjoy :)')),
  p('Author: Ryan Summe, 5/16/2024'),
  # Sidebar with a slider input for number of bins
  sidebarLayout(
      sidebarPanel(
          checkboxGroupInput('statusCheckbox', label='Storm Status',
                             choices=c('tropical depression', 'disturbance',
                                       'extratropical','hurricane','other low',
                                       'subtropical depression','subtropical storm',
                                       'tropical storm','tropical wave'),
                             selected=c('tropical storm','disturbance'))
      ),
      # Show a plot of the generated distribution
      mainPanel(plotOutput("plot"))
  )
)
