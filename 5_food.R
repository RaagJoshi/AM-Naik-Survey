library(ggplot2)

data = read.csv("C:/Users/raagj/OneDrive/Documents/_Projects/AM Naik Hostel Survey Analysis using R/am_naik_feedback.csv")

s1 = (grep("Feast", data$Hate_Food))
s1 = length(s1)
s2 = (grep("Quality", data$Hate_Food))
s2 = length(s2)
s3 = (grep("Taste", data$Hate_Food))
s3 = length(s3)
s4 = (grep("Quantity", data$Hate_Food))
s4 = length(s4)
s5 = (grep("Repeatative Menu", data$Hate_Food))
s5 = length(s5)


sample_data = data.frame(name = c("Feast", "Quality", "Taste", 
        "Quantity", "Repeatative Menu"), value = c(s1, s2, s3, s4, s5))  

# Create bar plot with default colors 
plot = ggplot(sample_data, aes(name, value, fill = name)) + geom_bar(stat = "identity") 

# add scale_fill_manual function to specify colors 
plot + scale_fill_manual(values = c("green", "orange", "red", "purple", "lightgreen"))

