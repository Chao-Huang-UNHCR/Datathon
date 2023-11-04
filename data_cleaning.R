library(tidyverse)
library(readxl)

###Percentage of children age 5 who were registered###############
child_reg_u5 = read_excel("data-master/Child_protection_indicators.xlsx", sheet = "Birth registration ", col_names = TRUE)
child_reg_u5[3, 1] <- "Country"
child_reg_u5[3, 2] <- "Year"
child_reg_u5[3, 3] <- "slum_urban"
child_reg_u5[3, 4] <- "non-slum_urban"
child_reg_u5[3, 7] <- "slum_capital"
child_reg_u5[3, 8] <- "non-slum_capital"

colnames(child_reg_u5) <- child_reg_u5[3, ]
child_reg_u5 <- child_reg_u5[-c(1:3), ]

for (col_index in 3:12) {
  colname <- colnames(child_reg_u5)[col_index]
  new_colname <- paste0(colname, "_child_reg_u5")
  colnames(child_reg_u5)[col_index] <- new_colname
}

################School attendance rate#############
edu_rate = read_excel("data-master/Primary_and_Secondary_Net_Attendance_Rate.xlsx", col_names = TRUE)

edu_rate[3, 1] <- "Country"
edu_rate[3, 2] <- "Year"
edu_rate[3, 3] <- "slum_urban"
edu_rate[3, 4] <- "non-slum_urban"
edu_rate[3, 7] <- "slum_capital"
edu_rate[3, 8] <- "non-slum_capital"
edu_rate[3, 14] <- "slum_urban"
edu_rate[3, 15] <- "non-slum_urban"
edu_rate[3, 18] <- "slum_capital"
edu_rate[3, 19] <- "non-slum_capital"

colnames(edu_rate) <- edu_rate[3, ]
edu_rate <- edu_rate[-c(1:3), ]

#primary education
for (col_index in 3:12) {
  colname <- colnames(edu_rate)[col_index]
  new_colname <- paste0(colname, "_primary")
  colnames(edu_rate)[col_index] <- new_colname
}

#secondary education
for (col_index in 14:23) {
  colname <- colnames(edu_rate)[col_index]
  new_colname <- paste0(colname, "_secondary")
  colnames(edu_rate)[col_index] <- new_colname
}

###Maternal Health###############
antenatal = read_excel("data-master/Maternal_Health.xlsx", sheet = "Antenatal care", col_names = TRUE)
antenatal[3, 1] <- "Country"
antenatal[3, 2] <- "Year"
antenatal[3, 3] <- "slum_urban"
antenatal[3, 4] <- "non-slum_urban"
antenatal[3, 7] <- "slum_capital"
antenatal[3, 8] <- "non-slum_capital"
antenatal[3, 14] <- "slum_urban"
antenatal[3, 15] <- "non-slum_urban"
antenatal[3, 18] <- "slum_capital"
antenatal[3, 19] <- "non-slum_capital"

colnames(antenatal) <- antenatal[3, ]
antenatal <- antenatal[-c(1:3), ]

for (col_index in 3:12) {
  colname <- colnames(antenatal)[col_index]
  new_colname <- paste0(colname, "_antenatal_skilled_personnel")
  colnames(antenatal)[col_index] <- new_colname
}

#births in a health facility
for (col_index in 14:23) {
  colname <- colnames(antenatal)[col_index]
  new_colname <- paste0(colname, "_antenatal_anyprovider_4x")
  colnames(antenatal)[col_index] <- new_colname
}

delivery_care = read_excel("data-master/Maternal_Health.xlsx", sheet = "Delivery care", col_names = TRUE)
delivery_care[3, 1] <- "Country"
delivery_care[3, 2] <- "Year"
delivery_care[3, 3] <- "slum_urban"
delivery_care[3, 4] <- "non-slum_urban"
delivery_care[3, 7] <- "slum_capital"
delivery_care[3, 8] <- "non-slum_capital"
delivery_care[3, 14] <- "slum_urban"
delivery_care[3, 15] <- "non-slum_urban"
delivery_care[3, 18] <- "slum_capital"
delivery_care[3, 19] <- "non-slum_capital"

colnames(delivery_care) <- delivery_care[3, ]
delivery_care <- delivery_care[-c(1:3), ]

#births attended by skilled health personnel
for (col_index in 3:12) {
  colname <- colnames(delivery_care)[col_index]
  new_colname <- paste0(colname, "_birth_skilled_personnel")
  colnames(delivery_care)[col_index] <- new_colname
}

#births in a health facility
for (col_index in 14:23) {
  colname <- colnames(delivery_care)[col_index]
  new_colname <- paste0(colname, "_birth_health_facility")
  colnames(delivery_care)[col_index] <- new_colname
}


###############Children living in slums#####################
children_slum = read_excel("data-master/Children_under_18_yrs_living_in_slums_households.xlsx", col_names = TRUE)

child_0_4_slum <- children_slum[, c(1, 2, 26)]
colnames(child_0_4_slum) <- c("Country","Year","child_0_4_slums")
child_0_4_slum <- child_0_4_slum[-c(1:2), ]

###############Internet users#####################
internet_users = read_excel("data-master/API_IT.NET.USER.ZS_DS2_en_excel_v2_5997550.xlsx", skip=3, col_names = TRUE)

