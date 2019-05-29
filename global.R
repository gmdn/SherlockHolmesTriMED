library(readxl)
library(shinydashboard)

file_path <- "./data/Term Record_SH.xlsx"

sheets <- excel_sheets(path = file_path)

data_formal <- read_excel(path = file_path, 
                          sheet = sheets[1], 
                          n_max = 4)


data_semantics <- read_excel(path = file_path, 
                          sheet = sheets[2], 
                          n_max = 4)

data_diachronic <- read_excel(path = file_path, 
                             sheet = sheets[5], 
                             n_max = 4)

data_diastratic <- read_excel(path = file_path, 
                              sheet = sheets[6], 
                              n_max = 4)
