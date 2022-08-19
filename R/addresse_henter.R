#' Title
#'
#' @param x Datasett, enten pull_x dataene eller All_Data
#' @param city_column kollone som inneholder bynavn
#' @param country_column kollone som inneholder landnavn
#' @import magrittr
#' @return En tibble med to kolloner, City og Country
#' @export
#'
#' @examples
#' \dontrun{
#' adresse_henter(Pull_2)
#' }
adresse_henter <- function(x, city_column = "address.city", country_column = "address.country") {
  city_column_q <- dplyr::enquo(city_column)
  country_column_q <- dplyr::enquo(country_column)

  x <- x %>%
    dplyr::select(!!city_column_q, !!country_column_q) %>%
    dplyr::rename(
      "City" = city_column,
      "Country" = country_column
    )
  return(x)
}
