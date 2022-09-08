getwd ()
setwd("/Users/bharathreddy/Desktop")

bharath <- read.csv("Quality reports.csv")
 
head(sample_db,n=10)
tail(sample_db,n=10)
nrow(sample_db)
ncol(sample_db)
str(sample_db)
summary(sample_db)

sample_db$location <- factor(sample_db)
levels(sample_db$location)
is.factor(sample_db)
install.packages("ggplot2")
library("ggplot2")
install.packages("esquisse")
library("esquisse")

esquisser()
ggplot(bharath) +
  aes(x = school_type, y = ethnicity_black_pct) +
  geom_col(fill = "#2B0154") +
  theme_minimal()
