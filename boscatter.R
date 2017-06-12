bokatter <- function(fig_height = NULL, fig_width = NULL, fig_title = NULL,
                     x_lab = NULL, y_lab = NULL, xlim_min = NULL, 
                     xlim_max = NULL, ylim_min = NULL, ylim_max = NULL,
                     x_grid = TRUE, y_grid = TRUE, x_axes = 'below', 
                     y_axes = 'left', legend = NULL, legend_loc = 'top_right',
                     x_data = NULL, y_data = NULL, data = data, 
                     glyph = 21, line_col = 'black', point_size = 10,
                     outer_alpha = 1, inner_col = 'blue', inner_alpha = 1,
                     outer_width = 1, hover_text = NULL, 
                     add_line = FALSE, line_a = NULL, 
                     line_b = NULL, line_v = NULL, line_h = NULL, 
                     line_coef = NULL, line_color  = 'black', 
                     line_alpha = NULL, line_width = 1, line_type = 1, 
                     line_legend = NULL, add_text = FALSE, text_x = NULL,
                     text_y = NULL, point_text = NULL, text_color = 'black',
                     text_alpha = 1, text_angle = 0, text_align = NULL,
                     text_baseline = NULL, text_font = NULL, 
                     text_fontsize = NULL, text_fontstyle = NULL, 
                     text_xoffset = NULL, text_yoffset = NULL, 
                     text_legend = NULL, title_align = 'left', title_alpha = 1,
                     title_baseline = 'bottom', title_color = "#444444",
                     title_font = "Helvetica", title_fontsize = 12,
                     title_fontstyle = 'normal') {
  
  suppressWarnings(
    p <- figure(height = fig_height, width = fig_width, title = fig_title,
                xlab = x_lab, ylab = y_lab, xlim = c(xlim_min, xlim_max), 
                ylim = c(ylim_min, ylim_max)) %>%
      ly_points(x = x_data, y = y_data, data = data, glyph = glyph, 
                line_color = line_col,size = point_size, 
                line_alpha = outer_alpha, fill_color = inner_col, 
                fill_alpha = inner_alpha, line_width = outer_width, 
                hover = hover_text) %>%
      theme_title(text_align = title_align, text_alpha = title_alpha, 
                  text_baseline = title_baseline, text_color = title_color,
                  text_font = title_font, text_font_size = title_fontsize,
                  text_font_style = title_fontstyle)
  )
  
  suppressWarnings(
    if(add_line) {
      suppressWarnings(  
        p <- p %>%
          ly_abline(a = line_a, b = line_b, v = line_v, h = line_h,
                    coef = line_coef, color = line_color, width = line_width, 
                    alpha = line_alpha, type = line_type, legend = line_legend)
      )
        
    }
  )
  
  if(add_text) {
    
    p <- p %>%
      ly_text(x = text_x, y = text_y, text = point_text, data = data, 
              color = text_color, alpha = text_alpha, angle = text_angle, 
              align = text_align, baseline = text_baseline, font = text_font,
              font_size = text_fontsize, font_style = text_fontstyle,
              x_offset = text_xoffset, y_offset = text_yoffset,
              legend = text_legend)
    
  }
      
  p
  
}

bokatter(x_data = 'disp', y_data = 'mpg', data = mtcars)

bokatter(x_data = 'disp', y_data = 'mpg', data = mtcars,
         fig_title = 'Scatter Plot', x_lab = 'Displacement',
         y_lab = 'Miles Per Gallon', xlim_min = 0, xlim_max = 600,
         ylim_min = 0, ylim_max = 45, glyph = 21, inner_col = 'red',
         hover_text = c('disp', 'mpg'), add_line = TRUE,
         line_v = 200, add_text = TRUE, text_x = 400, text_y = 30,
         point_text = 'hello', title_align = 'right', title_font = 'Arial')
