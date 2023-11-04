library(tidyverse)
library(readxl)

###Percentage of children age 5 who were registered at the moment of the survey
child_reg_u5 = read_excel("data-master/Child_protection_indicators.xlsx", sheet = "Birth registration ", col_names = TRUE)
child_reg_u5[3, 1] <- "Country"
child_reg_u5[3, 2] <- "Year"
child_reg_u5[3, 3] <- "slum_urban"
child_reg_u5[3, 4] <- "non-slum_urban"
child_reg_u5[3, 7] <- "slum_capital"
child_reg_u5[3, 8] <- "non-slum_capital"

colnames(child_reg_u5) <- child_reg_u5[3, ]
child_reg_u5 <- child_reg_u5[-c(1:3), ]

#School attendance rate
edu_rate = read_excel("data-master/Primary_and_Secondary_Net_Attendance_Rate.xlsx", col_names = TRUE)
