# Checks to see if we get the error message

test_that('Checking for errors', {
  expect_error(MyFunction(-9,3))
  expect_error(MyFunction(9,-3))
  expect_error(MyFunction(0,1))
})
