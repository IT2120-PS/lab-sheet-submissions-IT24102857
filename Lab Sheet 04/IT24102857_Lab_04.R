setwd("C:\\Users\\IT24102857\\Desktop\\ps lab\\IT24102857")
getwd()

#Q1
branch_data <- read.table("Exercise.txt", header = TRUE, sep = ",")

# Q2
fix(branch_data)
str(branch_data)
attach(branch_data)

# Q3 Obtain boxplot for Sales_X1
boxplot(branch_data$Sales_X1, main="Box plot for Sales", outline=TRUE, outpch=8, horizontal=TRUE)

# Q4
#five-number summary
summary(Advertising_X2)

#IQR
IQR(Advertising_X2)

# Q5
find_outliers <- function(x) {
  Q1 <- quantile(x, 0.25)
  Q3 <- quantile(x, 0.75)
  IQR <- Q3 - Q1
  lower <- Q1 - 1.5 * IQR
  upper <- Q3 + 1.5 * IQR
  outliers <- x[x < lower | x > upper]
  return(outliers)
}
find_outliers(branch_data$Years_X3)
