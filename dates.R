library(lubridate)
library(tidyverse)
library(nycflights13)

# Load in flight data ----------------------------------------------------------

flights <- flights

# Create new column for date only ----------------------------------------------

flights <- flights %>% 
  mutate(date = date(time_hour))

# Create a new column for time only --------------------------------------------

flights <- flights %>% 
  mutate(time = hms::as_hms(time_hour))

# Create a new column for month only -------------------------------------------

flights <- flights %>% 
  mutate(month = month(date, label = T, abbr = F))

# Create a new column for year only --------------------------------------------

flights <- flights %>% 
  mutate(year = year(date))

# Create a new column for weekday only -----------------------------------------

flights <- flights %>% 
  mutate(day = wday(date, label = T, abbr = F))

# End---------------------------------------------------------------------------









         
         









