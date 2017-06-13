# bivariate/multivariate box plot
b <- figure(ylab = 'Height', width = 300, height = 300) %>%
  ly_boxplot(x = mpg, y = cyl, data = mtcars, width = 0.9,
             coef = 1.5, outlier_glyph = 1, outlier_size = 10,
             fill_alpha = 1, line_alpha = 1, line_width = 1)
b
