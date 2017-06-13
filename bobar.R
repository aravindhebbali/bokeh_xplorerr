# univariate bar plot
ba <- figure() %>%
  ly_bar(x = levels(cyl), y = as.vector(table(cyl)), 
         data = mtcars, hover = TRUE, alpha = 0.8, width = 0.7,
         fill_color = 'red')
ba

# stacked/grouped bar plot
ba <- figure() %>%
  ly_bar(x = cyl, y = rep(1, length(cyl)), position = 'dodge',
         data = mtcars, color = gear, hover = TRUE, alpha = 0.8,
         width = 0.7)
ba
