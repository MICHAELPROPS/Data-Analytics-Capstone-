daily_activity <- read.csv("dailyActivity_merged.csv")
weight_log_info <- read.csv("weightLogInfo_merged.csv")

View(daily_activity)

View(weight_log_info)

install.packages("here")
library("here")

install.packages("skimr")
library("skimr")

install.packages("janitor")
library("janitor")

install.packages("dplyr")
library("dplyr")

install.packages("ggplot2")
library("ggplot2")

skim_without_charts("daily_activity")
skim_without_charts("weight_log_info")

glimpse("daily_activity")


rename_with(daily_activity, tolower)
rename_with(daily_calories, tolower)
rename_with(hourly_calories, tolower)
rename_with(hourly_intensities, tolower)
rename_with(weight_log_info, tolower)


ggplot(data = weight_log_info)+
  geom_smooth(mapping = aes(x = WeightPounds, y = BMI))

ggplot(data = daily_activity) +
  geom_point(mapping = aes(x = TotalSteps , y = Calories ))

ggplot(data = daily_activity)+
  geom_jitter(mapping = aes(x = SedentaryMinutes, y = Calories ))


