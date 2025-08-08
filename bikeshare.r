#Turn warnings off
options(warn = -1)



#Importing all the datasets 
=======
#Importing libraries
library(readr)
library(ggplot2) 
#adding
#hello

#Let's Import all the datasets 
 main
ny <- read_csv("new_york_city.csv")
wash <- read_csv("washington.csv")
chi <- read_csv("chicago.csv")

#Checking the first 6 rows of ny dataset
head(ny)

#Checking the first 6 rows of wash dataset
head(wash)

#Checking the first 6 rows of chi dataset
head(chi)

#Checking the last 6 rows of chi dataset
tail(chi)

#Checking the last 6 rows of wash dataset
tail(wash)

#Checking the last 6 rows of ny dataset
tail(ny)

#Checking the number of Columns of ny Dataset
ncol(ny)
#Checking the Columns Names of ny Dataset
colnames(ny)

#Checking the number of Columns of chi Dataset
ncol(chi)
#Checking the Columns Names of chi Dataset
colnames(chi)

#Checking the number of Columns of wash Dataset
ncol(wash)
#Checking the Columns Names of wash Dataset
colnames(wash)

# Load necessary libraries
library(dplyr)
library(lubridate)
library(ggplot2)

# Ensure the column name is referenced correctly and extract time components
ny <- ny %>%
  mutate(
    month = month(`Start Time`, label = TRUE),       # Extracting month
    day_of_week = wday(`Start Time`, label = TRUE),  # Extracting day of the week
    hour = hour(`Start Time`)                        # Extracting hour
  )

# 1. Most common month
most_common_month <- ny %>%
  count(month) %>%
  arrange(desc(n))

cat("Most common month in New York:\n")
print(most_common_month[1, ])

# Visualization for most common month
ggplot(most_common_month, aes(x = month, y = n, fill = month)) +
  geom_bar(stat = "identity") +
  labs(title = "Most Common Month for Bike Trips in New York", x = "Month", y = "Number of Trips") +
  theme_minimal()

# 2. Most common day of the week
most_common_day <- ny %>%
  count(day_of_week) %>%
  arrange(desc(n))

cat("\nMost common day of the week in New York:\n")
print(most_common_day[1, ])

# Visualization for most common day of the week
ggplot(most_common_day, aes(x = day_of_week, y = n, fill = day_of_week)) +
  geom_bar(stat = "identity") +
  labs(title = "Most Common Day of the Week for Bike Trips in New York", x = "Day of the Week", y = "Number of Trips") +
  theme_minimal()

# 3. Most common hour of the day
most_common_hour <- ny %>%
  count(hour) %>%
  arrange(desc(n))

cat("\nMost common hour of the day in New York:\n")
print(most_common_hour[1, ])

# Visualization for most common hour of the day
ggplot(most_common_hour, aes(x = hour, y = n)) +
  geom_bar(stat = "identity", fill = "steelblue") +
  labs(title = "Most Common Hour of the Day for Bike Trips in New York", x = "Hour of the Day", y = "Number of Trips") +
  theme_minimal()


# Load necessary libraries
library(dplyr)
library(lubridate)
library(ggplot2)

# Ensure the column name is referenced correctly and extract time components
wash <- wash %>%
  mutate(
    month = month(`Start Time`, label = TRUE),       # Extracting month
    day_of_week = wday(`Start Time`, label = TRUE),  # Extracting day of the week
    hour = hour(`Start Time`)                        # Extracting hour
  )

# 1. Most common month
most_common_month <- wash %>%
  count(month) %>%
  arrange(desc(n))

cat("Most common month in Washington:\n")
print(most_common_month[1, ])

# Visualization for most common month
ggplot(most_common_month, aes(x = month, y = n, fill = month)) +
  geom_bar(stat = "identity") +
  labs(title = "Most Common Month for Bike Trips in Washington", x = "Month", y = "Number of Trips") +
  theme_minimal()

# 2. Most common day of the week
most_common_day <- wash %>%
  count(day_of_week) %>%
  arrange(desc(n))

cat("\nMost common day of the week in Washington:\n")
print(most_common_day[1, ])

# Visualization for most common day of the week
ggplot(most_common_day, aes(x = day_of_week, y = n, fill = day_of_week)) +
  geom_bar(stat = "identity") +
  labs(title = "Most Common Day of the Week for Bike Trips in Washington", x = "Day of the Week", y = "Number of Trips") +
  theme_minimal()

# 3. Most common hour of the day
most_common_hour <- wash %>%
  count(hour) %>%
  arrange(desc(n))

cat("\nMost common hour of the day in Washington:\n")
print(most_common_hour[1, ])

# Visualization for most common hour of the day
ggplot(most_common_hour, aes(x = hour, y = n)) +
  geom_bar(stat = "identity", fill = "steelblue") +
  labs(title = "Most Common Hour of the Day for Bike Trips in Washington", x = "Hour of the Day", y = "Number of Trips") +
  theme_minimal()


# Load necessary libraries
library(dplyr)
library(lubridate)
library(ggplot2)

# Ensure the column name is referenced correctly and extract time components
chi <- chi %>%
  mutate(
    month = month(`Start Time`, label = TRUE),       # Extracting month
    day_of_week = wday(`Start Time`, label = TRUE),  # Extracting day of the week
    hour = hour(`Start Time`)                        # Extracting hour
  )

# 1. Most common month
most_common_month <- chi %>%
  count(month) %>%
  arrange(desc(n))

cat("Most common month in Chicago:\n")
print(most_common_month[1, ])

# Visualization for most common month
ggplot(most_common_month, aes(x = month, y = n, fill = month)) +
  geom_bar(stat = "identity") +
  labs(title = "Most Common Month for Bike Trips in Chicago", x = "Month", y = "Number of Trips") +
  theme_minimal()

# 2. Most common day of the week
most_common_day <- chi %>%
  count(day_of_week) %>%
  arrange(desc(n))

cat("\nMost common day of the week in Chicago:\n")
print(most_common_day[1, ])

# Visualization for most common day of the week
ggplot(most_common_day, aes(x = day_of_week, y = n, fill = day_of_week)) +
  geom_bar(stat = "identity") +
  labs(title = "Most Common Day of the Week for Bike Trips in Chicago", x = "Day of the Week", y = "Number of Trips") +
  theme_minimal()

# 3. Most common hour of the day
most_common_hour <- chi %>%
  count(hour) %>%
  arrange(desc(n))

cat("\nMost common hour of the day in Chicago:\n")
print(most_common_hour[1, ])

# Visualization for most common hour of the day
ggplot(most_common_hour, aes(x = hour, y = n)) +
  geom_bar(stat = "identity", fill = "steelblue") +
  labs(title = "Most Common Hour of the Day for Bike Trips in Chicago", x = "Hour of the Day", y = "Number of Trips") +
  theme_minimal()



# 1. Most common start station
most_common_start_station <- ny %>%
  count(`Start Station`) %>%
  arrange(desc(n))

cat("Most common start station in New York:\n")
print(most_common_start_station[1, ])

# Visualization for most common start stations (Top 10)
ggplot(most_common_start_station[1:10, ], aes(x = reorder(`Start Station`, -n), y = n)) +
  geom_bar(stat = "identity", fill = "steelblue") +  # Use a single color for simplicity
  coord_flip() +
  geom_text(aes(label = n), hjust = -0.2, size = 3) +  # Add data labels to the bars
  labs(
    title = "Top 10 Most Common Start Stations in New York",
    x = "Start Station",
    y = "Number of Trips"
  ) +
  theme_minimal() +
  theme(
    axis.text.y = element_text(size = 10),  # Adjust text size for station names
    axis.text.x = element_text(size = 10),  # Adjust text size for x-axis labels
    plot.title = element_text(hjust = 0.5, size = 14),  # Center and enlarge the title
    legend.position = "none"  # Remove the legend
  )

# 2. Most common end station
most_common_end_station <- ny %>%
  count(`End Station`) %>%
  arrange(desc(n))

cat("\nMost common end station in New York:\n")
print(most_common_end_station[1, ])

# Visualization for most common end stations (Top 10)
ggplot(most_common_end_station[1:10, ], aes(x = reorder(`End Station`, -n), y = n)) +
  geom_bar(stat = "identity", fill = "steelblue") +  # Use a single color for simplicity
  coord_flip() +
  geom_text(aes(label = n), hjust = -0.2, size = 3) +  # Add data labels to the bars
  labs(
    title = "Top 10 Most Common End Stations in New York",
    x = "End Station",
    y = "Number of Trips"
  ) +
  theme_minimal() +
  theme(
    axis.text.y = element_text(size = 10),  # Adjust text size for station names
    axis.text.x = element_text(size = 10),  # Adjust text size for x-axis labels
    plot.title = element_text(hjust = 0.5, size = 14),  # Center and enlarge the title
    legend.position = "none"  # Remove the legend
  )

# 3. Most common trip (start to end)
most_common_trip <- ny %>%
  mutate(trip = paste(`Start Station`, "to", `End Station`)) %>%
  count(trip) %>%
  arrange(desc(n))

cat("\nMost common trip in New York:\n")
print(most_common_trip[1, ])

# Visualization for most common trips (Top 10)
ggplot(most_common_trip[1:10, ], aes(x = reorder(trip, -n), y = n)) +
  geom_bar(stat = "identity", fill = "steelblue") +  # Use a single color for simplicity
  coord_flip() +
  geom_text(aes(label = n), hjust = -0.2, size = 3) +  # Add data labels to the bars
  labs(
    title = "Top 10 Most Common Trips in New York",
    x = "Trip",
    y = "Number of Trips"
  ) +
  theme_minimal() +
  theme(
    axis.text.y = element_text(size = 8),  # Adjust text size for trip names
    axis.text.x = element_text(size = 10),  # Adjust text size for x-axis labels
    plot.title = element_text(hjust = 0.5, size = 14),  # Center and enlarge the title
    legend.position = "none"  # Remove the legend
  )




# 1. Most common start station
most_common_start_station <- wash %>%
  count(`Start Station`) %>%
  arrange(desc(n))

cat("Most common start station in Washington:\n")
print(most_common_start_station[1, ])

# Visualization for most common start stations (Top 10)
ggplot(most_common_start_station[1:10, ], aes(x = reorder(`Start Station`, -n), y = n)) +
  geom_bar(stat = "identity", fill = "steelblue") +  # Use a single color for simplicity
  coord_flip() +
  geom_text(aes(label = n), hjust = -0.2, size = 3) +  # Add data labels to the bars
  labs(
    title = "Top 10 Most Common Start Stations in Washington",
    x = "Start Station",
    y = "Number of Trips"
  ) +
  theme_minimal() +
  theme(
    axis.text.y = element_text(size = 10),  # Adjust text size for station names
    axis.text.x = element_text(size = 10),  # Adjust text size for x-axis labels
    plot.title = element_text(hjust = 0.5, size = 14),  # Center and enlarge the title
    legend.position = "none"  # Remove the legend
  )

# 2. Most common end station
most_common_end_station <- wash %>%
  count(`End Station`) %>%
  arrange(desc(n))

cat("\nMost common end station in Washington:\n")
print(most_common_end_station[1, ])

# Visualization for most common end stations (Top 10)
ggplot(most_common_end_station[1:10, ], aes(x = reorder(`End Station`, -n), y = n)) +
  geom_bar(stat = "identity", fill = "steelblue") +  # Use a single color for simplicity
  coord_flip() +
  geom_text(aes(label = n), hjust = -0.2, size = 3) +  # Add data labels to the bars
  labs(
    title = "Top 10 Most Common End Stations in Washington",
    x = "End Station",
    y = "Number of Trips"
  ) +
  theme_minimal() +
  theme(
    axis.text.y = element_text(size = 10),  # Adjust text size for station names
    axis.text.x = element_text(size = 10),  # Adjust text size for x-axis labels
    plot.title = element_text(hjust = 0.5, size = 14),  # Center and enlarge the title
    legend.position = "none"  # Remove the legend
  )

# 3. Most common trip (start to end)
most_common_trip <- wash %>%
  mutate(trip = paste(`Start Station`, "to", `End Station`)) %>%
  count(trip) %>%
  arrange(desc(n))

cat("\nMost common trip in Washington:\n")
print(most_common_trip[1, ])

# Visualization for most common trips (Top 10)
ggplot(most_common_trip[1:10, ], aes(x = reorder(trip, -n), y = n)) +
  geom_bar(stat = "identity", fill = "steelblue") +  # Use a single color for simplicity
  coord_flip() +
  geom_text(aes(label = n), hjust = -0.2, size = 3) +  # Add data labels to the bars
  labs(
    title = "Top 10 Most Common Trips in Washington",
    x = "Trip",
    y = "Number of Trips"
  ) +
  theme_minimal() +
  theme(
    axis.text.y = element_text(size = 8),  # Adjust text size for trip names
    axis.text.x = element_text(size = 10),  # Adjust text size for x-axis labels
    plot.title = element_text(hjust = 0.5, size = 14),  # Center and enlarge the title
    legend.position = "none"  # Remove the legend
  )



# Analyzing the Chicago dataset (wash)

# 1. Most common start station
most_common_start_station <- chi %>%
  count(`Start Station`) %>%
  arrange(desc(n))

cat("Most common start station in Chicago:\n")
print(most_common_start_station[1, ])

# Visualization for most common start stations (Top 10)
ggplot(most_common_start_station[1:10, ], aes(x = reorder(`Start Station`, -n), y = n)) +
  geom_bar(stat = "identity", fill = "steelblue") +  # Use a single color for simplicity
  coord_flip() +
  geom_text(aes(label = n), hjust = -0.2, size = 3) +  # Add data labels to the bars
  labs(
    title = "Top 10 Most Common Start Stations in Chicago",
    x = "Start Station",
    y = "Number of Trips"
  ) +
  theme_minimal() +
  theme(
    axis.text.y = element_text(size = 10),  # Adjust text size for station names
    axis.text.x = element_text(size = 10),  # Adjust text size for x-axis labels
    plot.title = element_text(hjust = 0.5, size = 14),  # Center and enlarge the title
    legend.position = "none"  # Remove the legend
  )

# 2. Most common end station
most_common_end_station <- chi %>%
  count(`End Station`) %>%
  arrange(desc(n))

cat("\nMost common end station in Chicago:\n")
print(most_common_end_station[1, ])

# Visualization for most common end stations (Top 10)
ggplot(most_common_end_station[1:10, ], aes(x = reorder(`End Station`, -n), y = n)) +
  geom_bar(stat = "identity", fill = "steelblue") +  # Use a single color for simplicity
  coord_flip() +
  geom_text(aes(label = n), hjust = -0.2, size = 3) +  # Add data labels to the bars
  labs(
    title = "Top 10 Most Common End Stations in Chicago",
    x = "End Station",
    y = "Number of Trips"
  ) +
  theme_minimal() +
  theme(
    axis.text.y = element_text(size = 10),  # Adjust text size for station names
    axis.text.x = element_text(size = 10),  # Adjust text size for x-axis labels
    plot.title = element_text(hjust = 0.5, size = 14),  # Center and enlarge the title
    legend.position = "none"  # Remove the legend
  )

# 3. Most common trip (start to end)
most_common_trip <- chi %>%
  mutate(trip = paste(`Start Station`, "to", `End Station`)) %>%
  count(trip) %>%
  arrange(desc(n))

cat("\nMost common trip in Chicago:\n")
print(most_common_trip[1, ])

# Visualization for most common trips (Top 10)
ggplot(most_common_trip[1:10, ], aes(x = reorder(trip, -n), y = n)) +
  geom_bar(stat = "identity", fill = "steelblue") +  # Use a single color for simplicity
  coord_flip() +
  geom_text(aes(label = n), hjust = -0.2, size = 3) +  # Add data labels to the bars
  labs(
    title = "Top 10 Most Common Trips in Chicago",
    x = "Trip",
    y = "Number of Trips"
  ) +
  theme_minimal() +
  theme(
    axis.text.y = element_text(size = 8),  # Adjust text size for trip names
    axis.text.x = element_text(size = 10),  # Adjust text size for x-axis labels
    plot.title = element_text(hjust = 0.5, size = 14),  # Center and enlarge the title
    legend.position = "none"  # Remove the legend
  )


# Calculate total and average travel time for each city
travel_time_data <- data.frame(
  City = c("New York", "Chicago", "Washington"),
  Total_Travel_Time_Hours = c(
    sum(ny$`Trip Duration`, na.rm = TRUE) / 3600,  # Convert seconds to hours
    sum(chi$`Trip Duration`, na.rm = TRUE) / 3600,
    sum(wash$`Trip Duration`, na.rm = TRUE) / 3600
  ),
  Average_Travel_Time_Minutes = c(
    mean(ny$`Trip Duration`, na.rm = TRUE) / 60,  # Convert seconds to minutes
    mean(chi$`Trip Duration`, na.rm = TRUE) / 60,
    mean(wash$`Trip Duration`, na.rm = TRUE) / 60
  )
)

# Print the travel time data
print(travel_time_data)

# Visualization for total travel time
ggplot(travel_time_data, aes(x = City, y = Total_Travel_Time_Hours, fill = City)) +
  geom_bar(stat = "identity", show.legend = FALSE) +  # Remove legend
  geom_text(aes(label = round(Total_Travel_Time_Hours, 1)), vjust = -0.5, size = 4) +  # Add data labels
  labs(
    title = "Total Travel Time by City (in Hours)",
    x = "City",
    y = "Total Travel Time (Hours)"
  ) +
  theme_minimal() +
  theme(
    axis.text.x = element_text(size = 10),  # Adjust text size for x-axis labels
    axis.text.y = element_text(size = 10),  # Adjust text size for y-axis labels
    plot.title = element_text(hjust = 0.5, size = 14)  # Center and enlarge the title
  )

# Visualization for average travel time
ggplot(travel_time_data, aes(x = City, y = Average_Travel_Time_Minutes, fill = City)) +
  geom_bar(stat = "identity", show.legend = FALSE) +  # Remove legend
  geom_text(aes(label = round(Average_Travel_Time_Minutes, 1)), vjust = -0.5, size = 4) +  # Add data labels
  labs(
    title = "Average Travel Time by City (in Minutes)",
    x = "City",
    y = "Average Travel Time (Minutes)"
  ) +
  theme_minimal() +
  theme(
    axis.text.x = element_text(size = 10),  # Adjust text size for x-axis labels
    axis.text.y = element_text(size = 10),  # Adjust text size for y-axis labels
    plot.title = element_text(hjust = 0.5, size = 14)  # Center and enlarge the title
  )


# 1. Counts of each user type
# New York
ny_user_type_counts <- ny %>%
  count(`User Type`)

cat("Counts of each user type in New York:\n")
print(ny_user_type_counts)

# Chicago
chi_user_type_counts <- chi %>%
  count(`User Type`)

cat("\nCounts of each user type in Chicago:\n")
print(chi_user_type_counts)

# Washington
wash_user_type_counts <- wash %>%
  count(`User Type`)

cat("\nCounts of each user type in Washington:\n")
print(wash_user_type_counts)

# 2. Counts of each gender (only for NYC and Chicago)
# New York
ny_gender_counts <- ny %>%
  count(Gender)

cat("\nCounts of each gender in New York:\n")
print(ny_gender_counts)

# Chicago
chi_gender_counts <- chi %>%
  count(Gender)

cat("\nCounts of each gender in Chicago:\n")
print(chi_gender_counts)

# 3. Birth year statistics (only for NYC and Chicago)
# New York
ny_birth_year_stats <- ny %>%
  summarise(
    earliest_birth_year = min(`Birth Year`, na.rm = TRUE),
    most_recent_birth_year = max(`Birth Year`, na.rm = TRUE),
    most_common_birth_year = as.numeric(names(which.max(table(`Birth Year`))))
  )

cat("\nBirth year statistics for New York:\n")
print(ny_birth_year_stats)

# Chicago
chi_birth_year_stats <- chi %>%
  summarise(
    earliest_birth_year = min(`Birth Year`, na.rm = TRUE),
    most_recent_birth_year = max(`Birth Year`, na.rm = TRUE),
    most_common_birth_year = as.numeric(names(which.max(table(`Birth Year`))))
  )

cat("\nBirth year statistics for Chicago:\n")
print(chi_birth_year_stats)



# 1. Counts of each user type
# Combine data for all cities
user_type_data <- data.frame(
  City = c("New York", "Chicago", "Washington"),
  User_Type = c(
    paste(ny_user_type_counts$`User Type`, collapse = ", "),
    paste(chi_user_type_counts$`User Type`, collapse = ", "),
    paste(wash_user_type_counts$`User Type`, collapse = ", ")
  )
)

# Visualization for user type counts
ggplot(user_type_data, aes(x = City, y = User_Type)) +
  geom_bar(stat = "identity", fill = "steelblue") +
  coord_flip() +
  geom_text(aes(label = User_Type), hjust = -0.2, size = 3) +
  labs(
    title = "User Type Counts by City",
    x = "City",
    y = "User Type"
  ) +
  theme_minimal() +
  theme(
    axis.text.y = element_text(size = 10),
    axis.text.x = element_text(size = 10),
    plot.title = element_text(hjust = 0.5, size = 14),
    legend.position = "none"
  )

# 2. Counts of each gender (only for NYC and Chicago)
gender_data <- data.frame(
  City = c("New York", "Chicago"),
  Gender = c(
    paste(ny_gender_counts$Gender, collapse = ", "),
    paste(chi_gender_counts$Gender, collapse = ", ")
  )
)

# Visualization for gender counts
ggplot(gender_data, aes(x = City, y = Gender)) +
  geom_bar(stat = "identity", fill = "steelblue") +
  coord_flip() +
  geom_text(aes(label = Gender), hjust = -0.2, size = 3) +
  labs(
    title = "Gender Counts by City",
    x = "City",
    y = "Gender"
  ) +
  theme_minimal() +
  theme(
    axis.text.y = element_text(size = 10),
    axis.text.x = element_text(size = 10),
    plot.title = element_text(hjust = 0.5, size = 14),
    legend.position = "none"
  )

# 3. Birth year statistics (only for NYC and Chicago)
birth_year_data <- data.frame(
  City = c("New York", "Chicago"),
  Earliest_Birth_Year = c(ny_birth_year_stats$earliest_birth_year, chi_birth_year_stats$earliest_birth_year),
  Most_Recent_Birth_Year = c(ny_birth_year_stats$most_recent_birth_year, chi_birth_year_stats$most_recent_birth_year),
  Most_Common_Birth_Year = c(ny_birth_year_stats$most_common_birth_year, chi_birth_year_stats$most_common_birth_year)
)

# Visualization for birth year statistics
ggplot(birth_year_data, aes(x = City)) +
  geom_bar(aes(y = Earliest_Birth_Year), stat = "identity", fill = "steelblue") +
  geom_bar(aes(y = Most_Recent_Birth_Year), stat = "identity", fill = "darkorange") +
  geom_bar(aes(y = Most_Common_Birth_Year), stat = "identity", fill = "green") +
  labs(
    title = "Birth Year Statistics by City",
    x = "City",
    y = "Birth Year"
  ) +
  theme_minimal() +
  theme(
    axis.text.y = element_text(size = 10),
    axis.text.x = element_text(size = 10),
    plot.title = element_text(hjust = 0.5, size = 14),
    legend.position = "none"
  )

