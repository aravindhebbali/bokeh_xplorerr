install.packages('rbokeh')
library(rbokeh)

# scatter plot
p <- figure() %>%
  ly_points(Sepal.Length, Sepal.Width, data = iris,
            color = 'blue', glyph = 'circle',
            hover = list(Sepal.Length))
p

# specify legend manually
z <- lm(dist ~ speed , data = cars)
p <- figure(height = 400, width = 400) %>%
  ly_points(cars, hover = cars) %>%
  ly_lines(lowess(cars), legend = "lowess") %>%
  ly_abline(z, type = 2, legend = 'lm')
p

# histogram with density
h <- figure(width = 400, height = 300) %>%
  ly_hist(eruptions, data = faithful, breaks = 10, freq = FALSE) %>%
  ly_density(eruptions, data = faithful)
h

# box plot
b <- figure(ylab = 'Height', width = 500) %>%
  ly_boxplot(voice.part, height, data = lattice::singer)
b

# bar plot
mtcars$cyl <- as.factor(mtcars$cyl)
mtcars$gear <- as.factor(mtcars$gear)
ba <- figure() %>%
  ly_bar(x = cyl, y = rep(1, length(cyl)), 
         data = mtcars, color = gear, hover = TRUE)
ba

ba <- figure() %>%
  ly_bar(cyl, gear, data = mtcars)
  
  
figure() %>%
  ly_bar(variety, yield, data = lattice::barley, hover = TRUE) %>%
  theme_axis("x", major_label_orientation = 90)  
  
  
  
  
  
  
  
  




