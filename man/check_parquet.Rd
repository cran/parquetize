% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/check_parquet.R
\name{check_parquet}
\alias{check_parquet}
\title{Check if parquet file or dataset is readable and return basic informations}
\usage{
check_parquet(path)
}
\arguments{
\item{path}{path to the file or dataset}
}
\value{
a tibble with information on parquet dataset/file's columns with
  three columns : field name, arrow type and nullable
}
\description{
This function checks if a file/dataset is a valid parquet format.
  It will print the number of lines/columns and return a tibble on columns
  information.
}
\details{
This function will :

* open the parquet dataset/file to check if it's valid
* print the number of lines
* print the number of columns
* return a tibble with 2 columns :

  * the column name (string)
  * the arrow type (string)

You can find a list of arrow type in the documentation
\href{https://arrow.apache.org/docs/r/articles/data_types.html}{on this page}.
}
\examples{

# check a parquet file
check_parquet(parquetize_example("iris.parquet"))

# check a parquet dataset
check_parquet(parquetize_example("iris_dataset"))
}
