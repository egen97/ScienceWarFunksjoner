gruppe_summerer <- function(name, fagGruppe, ...){
  datanew <- data.table::copy(FagData)
  datanew <- datanew[, .(sum(.SD)), by = .(id, year), .SDcols = Kattegori_Henter(fagGruppe,...)]
  rename(datanew, !!quo_name(name) := "V1")
}
