#' gruppe_summerer
#'
#' @param name gir navn til ny kollone med summen av fagene innenfor denne
#' @param fagGruppe hvilket institutt som skal hentes
#' @param ... kan velge om det ønskes publikasjoner eller siteringer, returneres til kattegori_henter funksjonen
#' @param x datasettet som skal kollapses
#' @import dplyr
#' @import data.table
#' @return En data.table hvor fagene er redusert ned til kattegoriene bestemt i fagkattegorier filen
#' @export
#'
#' @examples
#' \dontrun{
#' gruppe_summerer(All_Data)
#' }
gruppe_summerer <- function(x, name, fagGruppe, ...){
  setDT(x)

  datanew <- data.table::copy(x)
  datanew <- datanew[, list(sum(.SD)), by = list(id, year), .SDcols = ScienceWarFunksjoner::kattegori_henter(fagGruppe,...)]
  rename(datanew, !!quo_name(name) := "V1")
}
