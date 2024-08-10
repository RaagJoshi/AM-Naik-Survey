library(ggplot2)

data = read.csv("C:/Users/raagj/OneDrive/Documents/_Projects/AM Naik Hostel Survey Analysis using R/am_naik_feedback.csv")

s1 = sum(data$Higher_Auth_Action == "Yes")
s2 = sum(data$Higher_Auth_Action == "No")
                       
print(s1)

sample_data = data.frame(name = c("Yes", "No"), 
  value = c(s1, s2))  

# Create bar plot with default colors 
plot = ggplot(sample_data, aes(name, value, fill = name)) + geom_bar(stat = "identity") 

# add scale_fill_manual function to specify colors 
plot + scale_fill_manual(values = c("red", "blue"))

