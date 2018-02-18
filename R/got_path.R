#' Game of Thrones CSV Path
#' 
#' Returns the path to the Game of thrones data set.
#' @export
#' @importFrom readr read_csv
#' @examples
#' fname = get_got_path()
#' readr::read_csv(fname)
get_got_path = function() {
  system.file("datasets", "GoT.csv", package = "jrTidyverse", mustWork = TRUE)
}