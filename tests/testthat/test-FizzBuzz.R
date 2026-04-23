# tests/testthat/test_FizzBuzz.R
# Unit tests for the FizzBuzz function

test_that("FizzBuzz returns a vector of the same length as input n", {
  expect_equal(length(FizzBuzz(10)),  10)
  expect_equal(length(FizzBuzz(1)),   1)
  expect_equal(length(FizzBuzz(15)),  15)
  expect_equal(length(FizzBuzz(30)),  30)
})


test_that("FizzBuzz throws an error for negative, zero, or infinite n", {

  expect_error(FizzBuzz(-1),   "n must be a positive integer")
  expect_error(FizzBuzz(-5),   "n must be a positive integer")
  expect_error(FizzBuzz(0),    "n must be a positive integer")
  expect_error(FizzBuzz(Inf),  "n must be a positive integer")
  expect_error(FizzBuzz(-Inf), "n must be a positive integer")
})


test_that("FizzBuzz produces correct values for small inputs", {
  expect_equal(FizzBuzz(15),
               c("1", "2", "Fizz", "4", "Buzz", "Fizz", "7", "8", "Fizz",
                 "Buzz", "11", "Fizz", "13", "14", "Fizz Buzz"))
})
