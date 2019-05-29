library(Lahman)
library(tidyverse)
library(dslabs)
ds_theme_set()

#run per game vs home run per game 
Teams %>% filter(yearID %in% 1961:2001) %>%
  mutate(HR_per_game = HR/G, R_per_game = R/G) %>%
  ggplot(aes(HR_per_game, R_per_game)) + 
  geom_point(alpha = 0.5, color = "blue", size = 2)

#run per game vs stolen bases per game
Teams %>% filter(yearID %in% 1961:2001 ) %>%
  mutate(SB_per_game = SB/G, R_per_game = R/G) %>%
  ggplot(aes(SB_per_game, R_per_game)) + 
  geom_point(alpha = 0.5, color =" red",size =2)

#run per game vs base on ball per game
Teams %>% filter(yearID %in% 1961:2001 ) %>%
  mutate(BB_per_game = BB/G, R_per_game = R/G) %>%
  ggplot(aes(BB_per_game, R_per_game)) + 
  geom_point(alpha = 0.5, color =" green",size =2 )