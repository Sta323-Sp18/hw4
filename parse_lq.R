library(rvest)
library(magrittr)
library(purrr)
library(fs)

files = fs::dir_ls("data/lq")

files = files[1:3]

df = map_df(
  files,
  function(file) {
   page = read_html(file)
   print(page)
  
   data.frame()
  }
)

saveRDS(df, file = "data/lq.rds")
