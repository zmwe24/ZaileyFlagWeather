# R/FizzBuzz.R

#' Play the FizzBuzz game up to n
#'
#' Returns a character vector where multiples of 3 are "Fizz",
#' multiples of 5 are "Buzz", and multiples of both are "Fizz Buzz".
#'
#' @param n A positive integer (the upper limit of the game)
#' @return A character vector of length n containing the FizzBuzz results
#' @export


FizzBuzz <- function(n) {
  if (!is.numeric(n) || length(n) != 1 || !is.finite(n) || n <= 0 || n != round(n)) {
    stop("n must be a positive integer", call. = FALSE)
  }

  result <- character(n)

  for (i in 1:n) {
    if (i %% 15 == 0) {
      result[i] <- "Fizz Buzz"
    } else if (i %% 3 == 0) {
      result[i] <- "Fizz"
    } else if (i %% 5 == 0) {
      result[i] <- "Buzz"
    } else {
      result[i] <- as.character(i)
    }
  }

  return(result)
}
