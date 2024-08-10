library(ggplot2)

colors = c("red", "green", "orange", "purple") 
ratings <- c("1", "2", "3", "4", "5") 
types <- c("Studying", "Living", "Cleaning", "Food") 

data = read.csv("C:/Users/raagj/OneDrive/Documents/_Projects/AM Naik Hostel Survey Analysis using R/am_naik_feedback.csv")

s1 = sum(data$Studying == "1")
s2 = sum(data$Studying == "2")
s3 = sum(data$Studying == "3")
s4 = sum(data$Studying == "4")
s5 = sum(data$Studying == "5")

l1 = sum(data$Living == "1")
l2 = sum(data$Living == "2")
l3 = sum(data$Living == "3")
l4 = sum(data$Living == "4")
l5 = sum(data$Living == "5")

c1 = sum(data$Cleaning == "1")
c2 = sum(data$Cleaning == "2")
c3 = sum(data$Cleaning == "3")
c4 = sum(data$Cleaning == "4")
c5 = sum(data$Cleaning == "5")

f1 = sum(data$Food == "1")
f2 = sum(data$Food == "2")
f3 = sum(data$Food == "3")
f4 = sum(data$Food == "4")
f5 = sum(data$Food == "5")

# Create the matrix of the values. 
Values <- matrix(c(s1, s2, s3, s4, s5, l1, l2, l3, l4, l5, c1, c2, c3, c4, c5, 
  f1, f2, f3, f4, f5), nrow = 4, ncol = 5, byrow = TRUE) 

# Create the bar chart 
barplot(Values, main = "Ratings", names.arg = ratings,  
        xlab = "ratings", ylab = "number",  
        col = colors, beside = TRUE) 

# Add the legend to the chart 
legend("topleft", types, cex = 0.7, fill = colors) 

