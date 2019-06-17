
#' Changes a wind speed from mph to kmph
#'
#' @param windspeed number
#'
#' @return number
#'
#' @examples
#' mphtokmph(10)
#' @export

mphtokmph <- function(windspeed) {

    # from miles per hour to km per hour
    return(windspeed * 1.60934)
}


#' Check data
#'
#' @param data data frame of wind speed data
#'
#' @return ggplot object
#'
#' @examples plotWindSpeed(data)
#'
#' @export

plotWindSpeed <- function(data) {
    ggplot2::ggplot(data = data, aes(x = windspeed)) + geom_histogram(color = "blue", fill = "white", binwidth = 1.8) +
        facet_wrap(~city)

}
