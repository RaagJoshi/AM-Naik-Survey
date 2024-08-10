library(plotly)
library(dplyr)

data = read.csv("C:/Users/raagj/OneDrive/Documents/_Projects/AM Naik Hostel Survey Analysis using R/am_naik_feedback.csv")

y1 = sum(data$Next_Year == "Flats/PGs")
y2 = sum(data$Next_Year == "Other Hostels")
y3 = sum(data$Next_Year == "A.M. Naik")


next_year = data.frame(name = c("Flats/PGs", "Other Hostels", "A.M. Naik"), 
                     count = c(y1, y2, y3))


next_year_chart = plot_ly(data = next_year, labels = ~name, values = ~count, type = 'pie',
                        text = ~paste0(count),
                        textposition = 'inside',
                        insidetextfont = list(color = 'White'),
                        hoverinfo = 'text',
                        marker = list(colors = c('red', 'blue', 'orange'),
                                      line = list(color = 'Black', width = 1)),
                        showlegend = TRUE) %>%
  layout(title='Next Year Staying Distribution')

next_year_chart

