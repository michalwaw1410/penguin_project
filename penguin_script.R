#install.packages('tidyverse') only needed to download once
library(tidyverse)

penguins <- read.table('data/penguin_data.txt', header = TRUE)

glimpse(penguins)  #shows first few rows of data

#run a linear regression
model1 <- lm(body_mass_g ~ flipper_length_mm, data = penguins) 
summary(model1) 

#create a nice plot in ggplot2

ggplot(penguins, aes(x = flipper_length_mm, y = body_mass_g, colour = 
                       species)) + 
  geom_point() + 
  stat_smooth(method = "lm") 

x <- 1

x <- 1:10
Y <- 10:1
ploty(y ~ x)


ggsave("figs/1_flipper_bodymass_regression.png")  
#This saves the last plot that was run! 

penguins_female <- subset(penguins, sex == "female") #subset data on females

write_tsv(penguins_female, "results/1_penguin_female_only.txt") #save the subsetted results
