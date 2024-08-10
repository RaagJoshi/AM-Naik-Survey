library(ggplot2)
library(plotly)

data = read.csv("C:/Users/raagj/OneDrive/Documents/_Projects/AM Naik Hostel Survey Analysis using R/am_naik_feedback.csv")

y1 = sum(data$Year == "1")
y2 = sum(data$Year == "2")
y3 = sum(data$Year == "3")
y4 = sum(data$Year == "4")
y5 = sum(data$Year == "5")
y6 = sum(data$Year == "6")


year_sum = data.frame(Name1 = c("1st", "2nd", "3rd", "4th", "5th", "6th"),
                          count1 = c(y1, y2, y3, y4, y5, y6))

summary(data$Year)

year_pie_chart = plot_ly(data = year_sum, labels = ~Name1, values = ~count1, type = 'pie',
                         text = ~paste0(count1),
                         textposition = 'inside',
                         insidetextfont = list(color = 'White'),
                         hoverinfo = 'text',
                         marker = list(colors = c('red', 'blue', 'orange', 'brown', 'yellow', 'green'),
                                       line = list(color = 'Black', width = 2)),
                         showlegend = TRUE) %>%
  layout(title='Year Distribution')

year_pie_chart

