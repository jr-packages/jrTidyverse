#' Return a tibble with different types
#' @export
get_tibble_types = function() {
  
  tmp = new.env()
  data(GoT, package = "jrTidyverse", envir = tmp)
  tibble::tibble(a = 1L, b = 1.0, c = "1", d= factor("1", levels = 1:2), 
                 e = lubridate::ymd("2018-02-20"), 
                 f = Sys.time(), 
                 g = list(lm(Audience ~ Season, data = tmp$GoT)))
}