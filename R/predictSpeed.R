
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
