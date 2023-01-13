## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(parquetize)

## ----iris-example, eval=FALSE-------------------------------------------------
#  table_to_parquet(
#  path_to_table = system.file("examples", "iris.sas7bdat", package = "haven"),
#  path_to_parquet = tempfile(),
#  by_chunk = TRUE,
#  chunk_size = 50,
#  encoding = "utf-8"
#  )

## ----real-example, eval=FALSE-------------------------------------------------
#  table_to_parquet(
#  path_to_table = "myhugefile.sas7bdat",
#  path_to_parquet = tempdir(),
#  by_chunk = TRUE,
#  chunk_size = 2000000,
#  encoding = "utf-8"
#  )

## ----rbind_parquet-example, eval=FALSE----------------------------------------
#  rbind_parquet(
#  folder = tempfile(),
#  output_name = "myhugefile",
#  delete_initial_files = FALSE
#  )

