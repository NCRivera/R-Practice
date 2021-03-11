# Libraries ----

# install.packages("gcookbook")
library(gcookbook)
library(tidyverse)


# Basic Bar Graph ----
pg_mean %>% 
    
    # Data Visualization
    ggplot(mapping = aes(x = group, y = weight)) + 
    
    # Geometries: Col
    geom_col()


# Bar Graph: Continuous X ----

BOD %>% 
    
    # Data Visualization, X will continue despite values in vector
    ggplot(mapping = aes(x = Time, y = demand)) + 
    geom_col()


BOD %>% 
    
    # Data Visualization, Time is now a factor.
    ggplot(mapping = aes(
        x = Time %>% factor(), 
        y = demand
    )) + 
    geom_col()


pg_mean %>% 
    ggplot(mapping = aes(x = group, y = weight)) + 
    geom_col(fill = "lightblue", color = "black")


BOD %>% 
    ggplot(mapping = aes(x = Time %>% factor(), y = demand)) + 
    geom_col(color = "black", fill = "red")


# Grouping Bar Graphs with Second Discrete Variable ----

cabbage_exp %>% 
    ggplot(mapping = aes(x = Date, y = Weight)) + 
    geom_col(mapping = aes(fill = Cultivar), color = "black", position = "dodge")

