setwd("C:\\Users\\IT24102155\\Desktop\\IT24102155_Lab4")
getwd()

# 1 : Import the dataset
branch_data <- read.table("Exercise.txt", header=TRUE, sep = ",")
fix(branch_data)

# 2 check variable type
str(branch_data)

# 3 : Create boxplot for sales
boxplot(branch_data$Sales, 
        main="Boxplot of Sales", 
        ylab="Sales Amount",
        outline=TRUE,
        horizontal=FALSE)

# 4 : Five number summary 
advertising_summary <- summary(branch_data$Advertising)
print(advertising_summary)

# IQR 
advertising_iqr <- IQR(branch_data$Advertising)
print(paste("IQR for Advertising:", advertising_iqr))

# 5: Function to find outliers in a numeric vector
find_outliers <- function(x) {
  q1 <- quantile(x, 0.25)
  q3 <- quantile(x, 0.75)
  iqr <- q3 - q1
  
  lower_bound <- q1 - 1.5 * iqr
  upper_bound <- q3 + 1.5 * iqr
  
  outliers <- x[x < lower_bound | x > upper_bound]
  
  if (length(outliers) == 0) {
    return("No outliers detected")
  } else {
    return(sort(outliers))
  }
}

# Check for outliers in Years variable
years_outliers <- find_outliers(branch_data$Years)
print(paste("Outliers in Years variable:", paste(years_outliers, collapse=", ")))
