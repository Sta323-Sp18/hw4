library(rvest)
library(fs)

base_url = "http://www2.stat.duke.edu/~cr173/dennys/locations.dennys.com/"

page = read_html(paste0(base_url,"index.html"))

output_dir = "data/dennys"
fs::dir_create(output_dir, recursive=TRUE)

download.file(paste0(base_url,"index.html"), destfile = fs::path(output_dir, "index.html"), quiet=TRUE)
