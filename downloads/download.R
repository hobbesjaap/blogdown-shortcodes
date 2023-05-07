library(tidyverse)

downloads <- read_csv("../../static/downloads.csv")

download <- function(x) {
	download_selection <- downloads[x, ]
	download_url <- toString(select(download_selection, 2))
	download_img <- toString(select(download_selection, 3))
	download_title <- toString(select(download_selection, 4))
	download_description <- toString(select(download_selection, 5))
	start_url <- "<a href=\""
	end_url <- "\" target=\"_blank\" >"
	end_link <- "</a>"

	start_img <- "<img src=\""
	end_img <- "\">"

	new_line <- "<br>"

	ul_li_begin <- "<ul class=\"uldownload\"><li class=\"lidownload\">"
	end_ul_li <- "</li></ul>"

	concatenated <- paste0(ul_li_begin,start_url,
						  download_url,
						  end_url,
						  download_title,
						  start_img,
						  download_img,
						  end_img,
						  end_link,
						  new_line,
						  download_description,
						  end_ul_li)
	return(concatenated)
}
