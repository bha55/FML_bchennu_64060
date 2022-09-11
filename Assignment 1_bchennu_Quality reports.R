getwd() #excuted command to get current directory.
setwd("/Users/bharathreddy/Desktop") #executed command to select root directory. 

bharath <-read.csv("Quality reports.csv") #stored dataset in data frame "bharath".

View(bharath) #executed command to check data frame is stored.
attach(bharath) #access variables in stored data frame.

summary(bharath) #to display summary of data frame in form of mean, median and min. and max.

library(ggplot2) #access ggplot2 package for current data frame.
library(esquisse) #access esquisse package for current data frame.

esquisser() #executed to use esquisse package for plotting.

ggplot(bharath) +
  aes(x = school_type, fill = QR_4_1) +
  geom_bar() +
  scale_fill_manual(
    values = c(`No Data` = "#F8766D",
               Proficient = "#00C19F",
               `Well Developed` = "#FF61C3")) + theme_minimal() + theme(legend.position = "none") #code generated from esquisse for bar graph.

plot(enrollment, cap_sc_pct) #command to display scatterplot.
