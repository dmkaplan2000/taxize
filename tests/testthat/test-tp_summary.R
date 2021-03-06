# tests for tp_summary fxn in taxize
context("tp_summary")

dat <- tp_summary(id = 25509881)

test_that("tp_summary returns the correct value", {
	expect_that(names(dat)[[1]], matches(".id"))
})

test_that("tp_summary returns the correct class", {
	expect_is(dat, "data.frame")
	expect_equal(NCOL(dat), 22)
})
