

# Librerías ---------------------------------------------------------------

library(dslabs)
library(dplyr)

# main code ---------------------------------------------------------------

data()
my_data <- BOD

max.col(BOD)


data("murders")
my_data2 <- murders

murder_rate <- murders$total/murders$population*100000
murder_rate
murder <- murder_rate <= 1.7

west <- murders$region == "West"
west

safe <- murder_rate <= 1

index <- west & safe

murders$state[index]


# which function ----------------------------------------------------------

n_index <- which(murders$state == "Massachusetts")
n_index
murders$state[22]
which(murders$state == "Massachusetts")
which(murder_rate>=1.2)
murder_rate[n_index]


# match function ----------------------------------------------------------

n1_index <- match(c("Alabama", "California", "Connecticut", "Iowa", "Kentucky", "Wisconsin"), murders$state)
n1_index
murders$state[n1_index]
murder_rate[n1_index]


# Exercise Data Camp ------------------------------------------------------

# Store the murder rate per 100,000 for each state, in `murder_rate`
murder_rate <- murders$total/murders$population*100000

# Store the `murder_rate < 1` in `low` 
low <- murder_rate < 1

# Create a vector ind for states in the Northeast and with murder rates lower than 1. 
ind <- low & murders$region == "Northeast"

# Names of states in `ind` 
murders$state[ind]


# Ex. Data Camp -----------------------------------------------------------

# Store the 5 abbreviations in abbs. (remember that they are character vectors)
abbs <- c("MA", "ME", "MI", "MO", "MU") 

# Use the `which` command and `!` operator to find out which abbreviation are not actually part of the dataset and store in ind
ind <- which(!abbs%in%murders$abb)

# What are the entries of abbs that are not actual abbreviations
abbs[ind]

