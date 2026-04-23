#' Flagstaff Pulliam Airport Daily Weather (1950–2019)
#'
#' Daily weather observations from Flagstaff Pulliam Airport.
#' The dataset contains only the core variables requested for analysis.
#'
#' @format A tibble with `r nrow(Flagstaff_Weather)` rows and 5 columns:
#' \describe{
#'   \item{date}{Date of the observation (YYYY-MM-DD format).}
#'   \item{prcp}{Precipitation (inches).}
#'   \item{snow}{Snowfall (inches).}
#'   \item{tmax}{Maximum daily temperature (°F).}
#'   \item{tmin}{Minimum daily temperature (°F).}
#' }
#'
#' @details
#' All variables have been cleaned and converted to the appropriate data types.
#' Missing values are coded as `NA`. The data were originally downloaded in
#' "standard" units (inches for precipitation/snow, Fahrenheit for temperature).
#'
#' @source
#' National Oceanic and Atmospheric Administration (NOAA) Climate Data Online:
#' \url{https://www.ncdc.noaa.gov/cdo-web/search}
#'
#' Original raw data file:
#' `data-raw/Pulliam_Airport_Weather_Station.csv`
#'
#' Metadata file:
#' `data-raw/Pulliam_Airport_Weather_Station_Metadata.txt`
#'
#' @references
#' NOAA Global Historical Climatology Network - Daily (GHCN-Daily)
#'
#' @examples
#' # Load the dataset
#' data(Flagstaff_Weather)
#'
#' # Quick overview
#' head(Flagstaff_Weather)
#' summary(Flagstaff_Weather)
#'
#' # Example plot
#' ggplot(Flagstaff_Weather, aes(x = date, y = tmax)) +
#'   geom_line(color = "red") +
#'   labs(title = "Daily Maximum Temperature - Flagstaff Pulliam Airport",
#'        x = "Date", y = "Temperature (°F)")
#'
"Flagstaff_Weather"
