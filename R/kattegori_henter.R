Kattegori_Henter <- function(Institutt, type = "publications"){
  stopifnot(type == "publications" | type == "citations")
  if(Institutt %in% FagKattegorier$Institutt){

    FagKattegorier$Fag[which(FagKattegorier$Institutt == Institutt & grepl(type,FagKattegorier$Fag))]

  }

  else if(Institutt %in% FagKattegorier$Fakultet){

    FagKattegorier$Fag[which(FagKattegorier$Fakultet == Institutt & grepl(type,FagKattegorier$Fag))]
  }
  else stop("Institutt eller fakultet ikke funnet")
}
