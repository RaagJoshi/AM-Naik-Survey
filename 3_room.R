library(plotly)

data = read.csv("C:/Users/raagj/OneDrive/Documents/_Projects/AM Naik Hostel Survey Analysis using R/am_naik_feedback.csv")

r1 = sum(data$Room_Type == "Attached Bathroom - Non-AC")
r2 = sum(data$Room_Type == "Attached Bathroom - AC")
r3 = sum(data$Room_Type == "Common Bathroom - Non-AC")

dept_sum = data.frame(Name3 = c("Attached Bathroom - Non-AC", 
  "Attached Bathroom - AC", "Common Bathroom - Non-AC"),
  count3 = c(r1, r2, r3))

dept_pie_chart = plot_ly(data = dept_sum, labels = ~Name3, values = ~count3, type = 'pie',
                         text = ~paste0(count3),
                         textposition = 'inside',
                         insidetextfont = list(color = 'White'),
                         hoverinfo = 'text',
                         marker = list(colors = c('red', 'blue', 'orange'),
                                       line = list(color = 'Black', width = 2)),
                         showlegend = TRUE) %>%
  layout(title='Department Distribution')

dept_pie_chart 

