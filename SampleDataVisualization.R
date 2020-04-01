#sample code
library(tidyverse)
library(RColorBrewer)
options(scipen=999)
data("midwest",package = "ggplot2")
ggplot(midwest,aes(x = area,y = poptotal)) + 
  geom_point(aes(col = state),size = 3) + 
  geom_smooth(method = "lm",col = "firebrick",size = 2) +
  coord_cartesian(xlim=c(0,0.1), ylim=c(0, 1000000)) +
  labs(title = "Area vs Population",subtitle = "from midwest dataset",y = "Population",x = "Area",
          caption = "Midwest Demographics") +
  scale_color_brewer(palette = "Set1")
