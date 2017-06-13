# univariate box plot
b <- figure(ylab = 'Height', width = 300, height = 300) %>%
  ly_boxplot(x = mpg, data = mtcars, width = 0.9, coef = 1.5,
             fill_color = 'blue', fill_alpha = 1, outlier_glyph = 1, 
             outlier_size = 10, line_color = 'blue', line_alpha = 1,
             line_widht = 1)
b

