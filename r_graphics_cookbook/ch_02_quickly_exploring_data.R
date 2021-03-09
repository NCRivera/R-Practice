# Quickly Exploring Data ----

# Libraries ----
library(ggplot2)
library(magrittr)


# Scatter Plot
ggplot(data = mtcars, mapping = aes(x = wt, y = mpg)) + 
    
    # Geometries: Point
    geom_point()

# Line Graph ----
ggplot(data = pressure, mapping = aes(x = temperature, y = pressure)) + 
    
    # Geometries: Line
    geom_line()

ggplot(data = pressure, mapping = aes(x = temperature, y = pressure)) + 
    
    # Combining Geometries: Line + Point
    geom_line() + 
    geom_point()


# Bar Graph ----
ggplot(data = BOD, mapping = aes(x = Time, y = demand)) + 
    
    # Geometries: Column of values
    geom_col()

ggplot(data = BOD, mapping = aes(x = Time %>% factor(), y = demand)) + 
    
    # Geometries: Col
    geom_col()

ggplot(data = mtcars, mapping = aes(x = cyl)) + 
    
    # Geometries: Count of continuous x-Values
    geom_bar()

ggplot(data = mtcars, mapping = aes(x = cyl %>% factor())) + 
    
    # Geometries: bar with Discrete x-value
    geom_bar()


# Histogram ----
ggplot(data = mtcars, mapping = aes(x = mpg)) + 
    
    # Geometries: Histogram with default bin width
    geom_histogram()

ggplot(data = mtcars, mapping = aes(x = mpg)) + 
    
    #Geometries: Binwidth = 4
    geom_histogram(binwidth = 4)


# Boxplot ----
ggplot(data = ToothGrowth, mapping = aes(x = supp, y = len)) + 
    
    # Geometries: Boxplot
    geom_boxplot()

ggplot(data = ToothGrowth, mapping = aes(x = interaction(supp, dose), y = len)) + 
    geom_boxplot()


# Function Curve ----

func_1 <- function(x){
    x^(1/2)
}

func_2 <- function(x){
    x^(1/3)
}

func_3 <- function(x){
    x^(1/4)
}

ggplot(data = tibble::tibble(x = 0:10), mapping = aes(x = x)) + 
    stat_function(fun = func_1, geom = "point", color = "green") +
    stat_function(fun = func_2, geom = "point", color = "blue") +
    stat_function(fun = func_3, geom = "point", color = "red") +
    stat_function(fun = func_1, geom = "line", color = "green") +
    stat_function(fun = func_2, geom = "line", color = "blue") +
    stat_function(fun = func_3, geom = "line", color = "red")

