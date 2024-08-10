library(plotly)

data = read.csv("C:/Users/raagj/OneDrive/Documents/_Projects/AM Naik Hostel Survey Analysis using R/am_naik_feedback.csv")

d1 = sum(data$Department == "CE")
d2 = sum(data$Department == "CP")
d3 = sum(data$Department == "ME")
d4 = sum(data$Department == "IT")
d5 = sum(data$Department == "EE")
d6 = sum(data$Department == "EC")
d7 = sum(data$Department == "EL")
d8 = sum(data$Department == "PE")

dept_sum = data.frame(Name2 = c("CE", "CP", "ME", "IT", "EE", "EC", "EL", "PE"),
                      count2 = c(d1, d2, d3, d4, d5, d6, d7, d8))

dept_pie_chart = plot_ly(data = dept_sum, labels = ~Name2, values = ~count2, type = 'pie',
                         text = ~paste0(count2),
                         textposition = 'inside',
                         insidetextfont = list(color = 'White'),
                         hoverinfo = 'text',
                         marker = list(colors = c('red', 'blue', 'orange', 'brown', 'yellow', 'green', 'lightblue', 'gray'),
                                       line = list(color = 'Black', width = 2)),
                         showlegend = TRUE) %>%
  layout(title='Department Distribution')

dept_pie_chart 

