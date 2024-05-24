library(tidyverse)
library(ggplot2)
library(scales)

# Set working directory
setwd("C:\\Users\\junos\\OneDrive\\Documents\\PythonScripts\\netflix_data.csv")

# Get current working directory
print(getwd())

# Import the CSV file
df <- read_csv("Netflix_shows_movies.csv")

# View the first few rows
head(df)

# Check data types
str(df)

# Summarize the data
summary(df)

# Check for missing values
sum(is.na(df))

# Remove missing values
df <- na.omit(df)

# Count the types of movies
table(df$type)

# Plot the ratings distribution
ggplot(df, aes(x = rating)) +
  geom_bar(fill = "#585c28") +
  labs(title = "Ratings distribution On Netflix", x = "Rating", y = "Count")



