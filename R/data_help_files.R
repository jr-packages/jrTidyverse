#' Game of Thrones Audience figures
#'
#' Taken from wikipedia. The data set \code{GoT_df} returns a
#' data frame, whereas \code{GoT} returns a tibble.
#'
#'@name GoT
#'@aliases GoT_df
#'@docType data
#'@return A tibble or data frame.
#'@keywords datasets
#'@examples
#' data(GoT)
#' data(GoT_df)
NULL

#' OK Cupid data set
#'
#' Data from ok cupid see https://github.com/rudeboybert/JSE_OkCupid
#'
#'@name okcupid
#'@docType data
#'@usage data(okcupid)
#'@return A tibble
#'@keywords datasets
#'@examples
#' data(okcupid)
NULL


#' Stock prices example
#'
#' Used only for the dplyr joining example
#'
#'@name stock_price
#'@docType data
#'@usage data(stock_price)
#'@return A data frame
#'@keywords datasets
#'@examples
#' data(stock_price)
NULL

#' Stock price changes example
#'
#' Used only for the dplyr joining example
#'
#'@name stock_change
#'@docType data
#'@usage data(stock_change)
#'@return A data frame
#'@keywords datasets
#'@examples
#' data(stock_change)
NULL

#' School grade example
#'
#' Used for spread and gather examples
#'
#'@name School
#'@docType data
#'@usage data(School)
#'@return A data frame
#'@keywords datasets
#'@examples
#' data(School)
NULL

#' @name bond
#' @title James Bond Data set
#'
#' @description Statistics from the James bond films
#' @source http://www.knownman.com/james-bond-graph/
#' @docType data
NULL

#' @name GoTRating
#' @title Game of Thrones ratings
#' @description Game of thrones TV ratings for every episode
#' @docType data
#' @format A data frame
NULL

#' Example data frame data
#'
#' Used only for the introduction to data frames example
#'
#'@name example
#'@docType data
#'@usage data(example)
#'@return A data frame
#'@keywords datasets
#'@examples
#' data(example)
NULL

#' Movie information and user ratings from IMDB.com.
#'
#' The internet movie database, \url{http://imdb.com}, is a
#' website devoted to collecting movie data supplied by
#' studios and fans.
#'
#' It claims to be the biggest movie database on the web
#' and is run by amazon.  More about information
#' \url{imdb.com }can be found online,
#' \url{http://imdb.com/help/show_leaf?about}, including
#' information about the data collection process,
#' \url{http://imdb.com/help/show_leaf?infosource}.
#' @name movies
#' @docType data
#' @usage data(movies)
#' @return A data frame with 3658 rows and 21 variables.
#' \describe{
#' \item{title.}{Title of the movie.}
#' \item{year.}{Year of release.}
#' \item{budget.}{Total budget (if known) in US dollars}
#' \item{gross.}{Grossed amount in US dollars}
#' \item{duration}{Duration in minutes.}
#' \item{classification}{PG, 12A, etc}
#' \item{rating.}{Average IMDB user rating.}
#' \item{votes.}{Number of IMDB users who rated this movie.}
#' \item{language}{Original language of the film}
#' \item{country}{Country of release}
#' \item{cast_total_facebook_likes}{Total number of facebook likes of the cast}
#' \item{action, adventure, comedy, crime, drama, fantasy, sci-fi, thriller, romance, other}{Binary variables representing if movie was classified as belonging to that genre.}}
#'@references Credit: This data set was found of kaggle
#'@keywords datasets
#' @examples
#' data(movies)
NULL