library(ggplot2)

data = read.csv("C:/Users/raagj/OneDrive/Documents/_Projects/AM Naik Hostel Survey Analysis using R/am_naik_feedback.csv")

s1 = (grep("Food", data$Needs_Improvement))
s1 = length(s1)
s2 = (grep("Fees", data$Needs_Improvement))
s2 = length(s2)
s3 = (grep("Water", data$Needs_Improvement))
s3 = length(s3)
s4 = (grep("Electricity", data$Needs_Improvement))
s4 = length(s4)
s5 = (grep("Washing Machine", data$Needs_Improvement))
s5 = length(s5)
s6 = (grep("Punctuality", data$Needs_Improvement))
s6 = length(s6)
s7 = (grep("Living", data$Needs_Improvement))
s7 = length(s7)
s8 = (grep("Cleanliness", data$Needs_Improvement))
s8 = length(s8)
s9 = (grep("Behaviour", data$Needs_Improvement))
s9 = length(s9)
s10 = (grep("Vending", data$Needs_Improvement))
s10 = length(s10)

sample_data = data.frame(services = c("Food", "Fees", "Water", "Electricity",
"Washing Machine", "Punctuality", "Living", "Cleanliness", "Behaviour", "Vending"), 
value = c(s1, s2, s3, s4, s5, s6, s7, s8, s9, s10))  

# Create bar plot with default colors 
plot = ggplot(sample_data, aes(services, value, fill = services)) + geom_bar(stat = "identity") 

# add scale_fill_manual function to specify colors 
plot + scale_fill_manual(values = c("green", "orange", "red", "purple", "lightgreen", "blue", "brown", "pink", "yellow", "black"))

