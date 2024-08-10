library(ggplot2)

colors = c("red", "green", "orange", "purple") 
ratings <- c("1", "2", "3", "4", "5") 
types <- c("Wi-Fi", "Security", "Staff", "Services") 

data = read.csv("C:/Users/raagj/OneDrive/Documents/_Projects/AM Naik Hostel Survey Analysis using R/am_naik_feedback.csv")

s1 = sum(data$WIFI == "1")
s2 = sum(data$WIFI == "2")
s3 = sum(data$WIFI == "3")
s4 = sum(data$WIFI == "4")
s5 = sum(data$WIFI == "5")

l1 = sum(data$Security == "1")
l2 = sum(data$Security == "2")
l3 = sum(data$Security == "3")
l4 = sum(data$Security == "4")
l5 = sum(data$Security == "5")

c1 = sum(data$Staff_Interaction == "1")
c2 = sum(data$Staff_Interaction == "2")
c3 = sum(data$Staff_Interaction == "3")
c4 = sum(data$Staff_Interaction == "4")
c5 = sum(data$Staff_Interaction == "5")

f1 = sum(data$Services == "1")
f2 = sum(data$Services == "2")
f3 = sum(data$Services == "3")
f4 = sum(data$Services == "4")
f5 = sum(data$Services == "5")

# Create the matrix of the values. 
Values <- matrix(c(s1, s2, s3, s4, s5, l1, l2, l3, l4, l5, c1, c2, c3, c4, c5, 
                   f1, f2, f3, f4, f5), nrow = 4, ncol = 5, byrow = TRUE) 

# Create the bar chart 
barplot(Values, main = "Ratings", names.arg = ratings,  
        xlab = "ratings", ylab = "number",  
        col = colors, beside = TRUE) 

# Add the legend to the chart 
legend("topleft", types, cex = 0.7, fill = colors) 

