test_that("foo", {
  expect_snapshot(f(x = logical(0)), error = TRUE)
})
