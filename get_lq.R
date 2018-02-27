library(rvest)
library(purrr)
library(magrittr)
library(fs)


base_url = "http://www2.stat.duke.edu/~cr173/lq/www.lq.com/en/findandbook/"

page = read_html(paste0(base_url,"hotel-listings.html"))
 
urls = page %>% 
  html_nodes("#hotelListing .col-sm-12 a") %>% 
  html_attr("href") %>% 
  discard(is.na) %>%
  paste0(base_url, .)

fs::dir_create("data/lq", recursive=TRUE)


purrr::walk(
  urls,
  function(url) {
    
  }
)
