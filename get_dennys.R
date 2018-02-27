library(rvest)


base_url = "http://www2.stat.duke.edu/~cr173/dennys/locations.dennys.com/"

page = read_html(paste0(base_url,"index.html"))