test_that("Checks arguments are correctly filled in", {
  expect_missing_argument(
    fst_to_parquet(
      path_to_file = system.file("extdata","iris.fst",package = "parquetize")
    ),
    regexp = "path_to_parquet"
  )
  expect_missing_argument(
    fst_to_parquet(
      path_to_parquet = tempfile()
    ),
    regexp = "path_to_file"
  )
})

test_that("Checks message is displayed with fst file", {
  path_to_parquet <- tempfile()

  expect_no_error(
    fst_to_parquet(
      path_to_file = system.file("extdata","iris.fst",package = "parquetize"),
      path_to_parquet = path_to_parquet
    )
  )
  expect_parquet(
    file.path(path_to_parquet),
    with_lines = 150
  )

})

test_that("Checks message is displayed with by adding partition and partitioning argument", {
  path_to_parquet <- tempfile()

  expect_no_error(
    fst_to_parquet(
      path_to_file = system.file("extdata","iris.fst",package = "parquetize"),
      path_to_parquet = path_to_parquet,
      partition = "yes",
      partitioning =  c("Species")
    )
  )

  expect_parquet(
    file.path(path_to_parquet),
    with_lines = 150
  )
  expect_identical(
    dir(path_to_parquet),
    c('Species=setosa', 'Species=versicolor', 'Species=virginica')
  )
})
