library(plotly)
library(dplyr)

data = read.csv("C:/Users/raagj/OneDrive/Documents/_Projects/AM Naik Hostel Survey Analysis using R/am_naik_feedback.csv")

y1 = sum(data$Fees_Opinion == "Over-priced")
y2 = sum(data$Fees_Opinion == "Appropriate")
y3 = sum(data$Fees_Opinion == "Under-priced")


fees_op = data.frame(name = c("Over-priced", "Appropriate", "Under-priced"), 
                                count = c(y1, y2, y3))


fees_op_chart = plot_ly(data = fees_op, labels = ~name, values = ~count, type = 'pie',
                         text = ~paste0(count),
                         textposition = 'inside',
                         insidetextfont = list(color = 'White'),
                         hoverinfo = 'text',
                         marker = list(colors = c('red', 'blue', 'orange'),
                                       line = list(color = 'Black', width = 1)),
                         showlegend = TRUE) %>%
  layout(title='Fees Opinion Distribution')

fees_op_chart

