library(plotly)
library(dplyr)

data = read.csv("C:/Users/raagj/OneDrive/Documents/_Projects/AM Naik Hostel Survey Analysis using R/am_naik_feedback.csv")

y1 = sum(data$Staying_Option == "Accomodation")
y2 = sum(data$Staying_Option == "Accomodation + Food")


stay_op = data.frame(name = c("Accomodation", "Accomodation + Food"), 
                     count = c(y1, y2))


stay_op_chart = plot_ly(data = stay_op, labels = ~name, values = ~count, type = 'pie',
                        text = ~paste0(count),
                        textposition = 'inside',
                        insidetextfont = list(color = 'White'),
                        hoverinfo = 'text',
                        marker = list(colors = c('red', 'blue'),
                                      line = list(color = 'Black', width = 1)),
                        showlegend = TRUE) %>%
  layout(title='Staying Option Distribution')

stay_op_chart

