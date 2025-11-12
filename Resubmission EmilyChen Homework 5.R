library(tidyverse)
library(ggplot2)


#read the data I copy and paste to spreedhseet. 
teams <- read.csv('NWSl - Sheet1.csv')


#RQ1
ggplot(teams, aes(x =Age)) + 
  geom_histogram(fill = 'pink', color = 'white') +
  labs(
    title = "Distribution of Players Ages",
    x = 'ages',
    y = 'Count')


#RQ2
oneplayer <- teams[teams$Player == 'Kerry Abello',]

ggplot(teams, aes(x = Min, y = Gls)) + 
  geom_point(color = 'pink') + 
  geom_point(data = oneplayer, aes(x = Min, y = Gls), color = 'blue') +
  labs(title = 'Minutes Played', y = 'goals')
