# basic plot
p <- figure(height = 400, width = 400,
            xlab = 'Displacement', ylab = 'Miles Per Gallon',
            xlim = c(0, 600),  ylim = c(0, 45)) %>%
  ly_points(mtcars$disp, mtcars$mpg)
p

# add a line
p <- figure(height = 400, width = 400,
            xlab = 'Displacement', ylab = 'Miles Per Gallon',
            xlim = c(0, 600),  ylim = c(0, 45)) %>%
  ly_points(disp, mpg, data = mtcars) %>%
  ly_abline(29.6, -0.04122)
p

# hover
p <- figure(height = 400, width = 400,
            xlab = 'Displacement', ylab = 'Miles Per Gallon',
            xlim = c(0, 600),  ylim = c(0, 45)) %>%
  ly_points(disp, mpg, data = mtcars, hover = c(disp, mpg)) 
p

p <- figure(height = 400, width = 400,
            xlab = 'Displacement', ylab = 'Miles Per Gallon',
            xlim = c(0, 600),  ylim = c(0, 45)) %>%
  ly_points(disp, mpg, data = mtcars, 
            hover = 'Displacement: @disp and Mileage: @mpg') 
p


# attributes
p <- figure(height = 400, width = 400,
            xlab = 'Displacement', ylab = 'Miles Per Gallon',
            xlim = c(0, 600),  ylim = c(0, 45)) %>%
  ly_points(disp, mpg, data = mtcars, color = 'red', size = 20,
            hover = 'Displacement: @disp and Mileage: @mpg') 
p

# line and fill attributes
p <- figure(height = 400, width = 400,
            xlab = 'Displacement', ylab = 'Miles Per Gallon',
            xlim = c(0, 600),  ylim = c(0, 45)) %>%
  ly_points(disp, mpg, data = mtcars, color = 'red', size = 20,
            fill_color = 'blue',
            hover = 'Displacement: @disp and Mileage: @mpg') 
p

p <- figure(height = 400, width = 400,
            xlab = 'Displacement', ylab = 'Miles Per Gallon',
            xlim = c(0, 600),  ylim = c(0, 45)) %>%
  ly_points(disp, mpg, data = mtcars, line_color = 'red', size = 20,
            fill_color = 'blue', fill_alpha = 0.2,
            hover = 'Displacement: @disp and Mileage: @mpg') 
p

p <- figure(height = 400, width = 400,
            xlab = 'Displacement', ylab = 'Miles Per Gallon',
            xlim = c(0, 600),  ylim = c(0, 45)) %>%
  ly_points(disp, mpg, data = mtcars, line_color = 'red', size = 20,
            fill_color = 'blue', fill_alpha = 0.2, line_width = 3,
            hover = 'Displacement: @disp and Mileage: @mpg') 
p

p <- figure(height = 400, width = 400,
            xlab = 'Displacement', ylab = 'Miles Per Gallon',
            xlim = c(0, 600),  ylim = c(0, 45)) %>%
  ly_points(disp, mpg, data = mtcars, line_color = 'red', size = 20,
            fill_color = 'blue', fill_alpha = 0.2, line_width = 3,
            line_alpha = 0.8, line_join = 'bevel',
            hover = 'Displacement: @disp and Mileage: @mpg') 
p
