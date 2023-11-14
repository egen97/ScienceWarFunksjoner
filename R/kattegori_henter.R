#' Kattegori henter
#'
#' @param Institutt hvilket institutt eller fakultet som skal hentes ut
#' @param type publikasjoner eller siteringer
#'
#' @return data.frame med fagene som tilhører et institutt eller faktultet
#' @export
#'
#' @examples \dontrun{
#' kattegori_henter("political science", type = "publications")
#' }
kattegori_henter <- function(Institutt, type = "publications"){
  stopifnot(type == "publications" | type == "citations")
  FagKattegorier <- setDT(ScienceWarFunksjoner::fagkattegorier)
  if(Institutt %in% FagKattegorier$Institutt){

    FagKattegorier$Fag[which(FagKattegorier$Institutt == Institutt & grepl(type, FagKattegorier$Fag))]

  }

  else if(Institutt %in% FagKattegorier$Fakultet){

    FagKattegorier$Fag[which(FagKattegorier$Fakultet == Institutt & grepl(type, FagKattegorier$Fag))]
  }
  else stop("Institutt eller fakultet ikke funnet")
}



