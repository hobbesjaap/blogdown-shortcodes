library(tidyverse)

pins <- read_csv("../../static/pins.csv")

pinterest <- function(x) {
	print("Calling the Pinterest function")

	pinterest_selection <- pins[x, ]
	pin_img_url <- toString(select(pinterest_selection, 2))
	pin_alt_text <- toString(select(pinterest_selection, 3))

	start_pin <- "<p align=\"center\"><img src=\""
	pin_img_end <- "\" alt=\""
	pin_alt_end <- "\" class=\"pintimage\">"
	pin_html <- "<a href=\"https://www.pinterest.com/pin/create/button/\" data-pin-do=\"buttonPin\" data-pin-media=\"https://www.your-site-url-here.com"
	pin_html_end <- "\" data-pin-tall=\"true\"></a></p>"
	return_pinterest <- paste0(start_pin,
							   pin_img_url,
							   pin_img_end,
							   pin_alt_text,
							   pin_alt_end,
							   pin_html,
							   pin_img_url,
							   pin_html_end
							  )
	print(return_pinterest)
	return(return_pinterest)
}