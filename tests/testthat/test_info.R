library(testthat)

skip_on_cran()

source("tensor_functions.R")

context("PyTorch version")

test_that("PyTorch version is 1.1.0", {
    expect_true(torch$`__version__` %in% c("1.1.0", "1.1", "1.0", "1.0.0"))
})


test_that("CUDA is not available", {
    expect_equal(torch$cuda$is_available(), FALSE)
})


skip_on_travis()
test_that("Number of CPUs", {
    expect_true(torch$get_num_threads() %in% c(2, 4))
})



context("package config functions")

test_that("torch_version returns value", {
  expect_true(torch_version() %in% c("1.1", "1.1.0", "1.0.0"))
  # print(torch_version())

})
