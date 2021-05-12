# loading library packages
library(truncnorm)
# function from the original github repo
makeData <- function(seed = 10) {
  
  oslo <- rtruncnorm(731, a = 0, mean = 3, sd = 2)
  bergen <- rtruncnorm(731, a = 0, mean = 5, sd = 8.5)
  trondheim <- rtruncnorm(731, a = 0, mean = 2, sd = 7.5)
  stavanger <- rtruncnorm(731, a = 0, mean = 0.4, sd = 5)
  kristiansand <- rtruncnorm(731, a = 0, mean = 18, sd = 2.5)
  
  data_wide <- data.frame(Date = seq(from = as.Date("2016-01-01"), to = as.Date("2017-12-31"),
                                     by = 1),
                          oslo = oslo, bergen = bergen, trondheim = trondheim,
                          stavanger = stavanger, kristiansand = kristiansand)
  
  data <- tidyr::gather(data_wide, key = city, value = windspeed, oslo:kristiansand)
  
  return(data)
}
makeData()


# modifying the given function
makeData_mod <- function(seed = 3) {
  
  norcal <- rtruncnorm(731, a = 0, mean = 7.52, sd = 5)
  cencal <- rtruncnorm(731, a = 0, mean = 6.2, sd = 2.2)
  soucal <- rtruncnorm(731, a = 0, mean = 6.6, sd = 4.3)
  data_wide <- data.frame(Date = seq(from = as.Date("2019-01-01"), to = as.Date("2020-12-31"),
                                     by = 1),
                          norcal = norcal, cencal = cencal, soucal = soucal)
  
  data <- tidyr::gather(data_wide, key = city, value = windspeed, norcal:soucal)
  
  return(data)
}
makeData_mod()