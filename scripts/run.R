library(pureseqtmr)
library(knitr)
library(testthat)

fasta_filename <- "my_proteome.fasta"
expect_true(file.exists(fasta_filename))

topology <- predict_topology(fasta_filename)

kable(topology)

kable(tally_tmhs(topology))

