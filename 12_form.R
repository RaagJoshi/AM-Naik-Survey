library(ggplot2)

data = read.csv("C:/Users/raagj/OneDrive/Documents/_Projects/AM Naik Hostel Survey Analysis using R/am_naik_feedback.csv")

s1 = sum(data$Rate_Form == "1")
s2 = sum(data$Rate_Form == "2")
s3 = sum(data$Rate_Form == "3")
s4 = sum(data$Rate_Form == "4")
s5 = sum(data$Rate_Form == "5")

sample_data = data.frame(name = c("1", "2", "3", "4", "5"), 
                         value = c(s1, s2, s3, s4, s5))  

# Create bar plot with default colors 
plot = ggplot(sample_data, aes(name, value, fill = name)) + geom_bar(stat = "identity") 

# add scale_fill_manual function to specify colors 
plot + scale_fill_manual(values = c("red", "blue", "green", "yellow", "purple"))

