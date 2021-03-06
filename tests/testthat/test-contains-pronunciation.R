context("test-contains")

test_that("contains_pronunciation_phonemes works", {
  phons <- phonemes("through")[[1]]
  res <- contains_pronunciation_phonemes(phons)
  expect_type(res, 'character')
  expect_true('throughout' %in% res)


  phons <- phonemes("through")[[1]]
  res <- contains_pronunciation_phonemes(phons, keep_stresses = TRUE)
  expect_type(res, 'character')
  expect_true('throughput' %in% res)


  res <- contains_pronunciation('through', keep_stresses = TRUE)
  expect_type(res, 'character')
  expect_true('throughput' %in% res)



})
