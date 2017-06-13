# histogram with density
h <- figure(width = 400, height = 300) %>%
  ly_hist(eruptions, data = faithful, breaks = 'Sturges', 
          freq = TRUE, include.lowest = TRUE, right = TRUE,
          fill_color = 'blue', fill_alpha = 1, line_color = 'blue',
          line_alpha = 1, line_width = 1) %>%
  ly_density(eruptions, data = faithful, color = 'black', alpha = 1,
             width = 1, type = 1 , legend = FALSE)
h
