saveRDS(fagkattegorier, "IntData/fagkattegorier_orig.rds")

fagkattegorier <- fagkattegorier %>%
  dplyr::filter(!(Fag %in% c("citations_biochemistry.molecular.Biosciences", "citations_Biosciences", "citations_biotechnology.applied.microBiosciences", "citations_cell.Biosciences", "citations_developmental.Biosciences",
                      "citations_evolutionary.Biosciences", "citations_marine.freshwater.Biosciences", "citations_mathematical.computational.Biosciences", "citations_microBiosciences", "citations_reproductive.Biosciences",
                      "publications_biochemistry.molecular.Biosciences", "publications_Biosciences", "publications_biotechnology.applied.microBiosciences", "publications_cell.Biosciences", "publications_developmental.Biosciences",
                      "publications_evolutionary.Biosciences", "publications_marine.freshwater.Biosciences", "publications_mathematical.computational.Biosciences", "publications_microBiosciences", "publications_reproductive.Biosciences")))

write.csv(fagkattegorier, "IntData/fagkattegorier_csv.csv")

use_data(fagkattegorier, overwrite = TRUE)
?use_data
