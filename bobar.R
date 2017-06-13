# univariate bar plot
ba <- figure() %>%
  ly_bar(x = levels(cyl), y = as.vector(table(cyl)), 
         data = mtcars, hover = TRUE, alpha = 0.8, width = 0.7,
         fill_color = 'red', fill_alpha = 1, line_color = 'red',
         line_alpha = 1)
ba

