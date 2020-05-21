# `pureseqtmr_run`

Branch   |[![Travis CI logo](man/figures/TravisCI.png)](https://travis-ci.org)
---------|--------------------------------------------------------------------------------------------------------------------------------------------
`master` |[![Build Status](https://travis-ci.org/richelbilderbeek/pureseqtmr_run.svg?branch=master)](https://travis-ci.org/richelbilderbeek/pureseqtmr_run) 
`develop`|[![Build Status](https://travis-ci.org/richelbilderbeek/pureseqtmr_run.svg?branch=develop)](https://travis-ci.org/richelbilderbeek/pureseqtmr_run)

Run a Bayesian phylogenetic model comparison using [pureseqtmr](https://github.com/richelbilderbeek/pureseqtmr).

## What is `pureseqtmr_run`?

`pureseqtmr_run` allows you to do a Bayesian model comparison on a DNA alignment,
in an easy-to-use way.

To do so, `pureseqtmr_run` uses the infrastructure of GitHub and Travis CI. 
For simple alignments, this costs nothing. Because everything happens online, 
no installation is needed :+1:.

You can 
 
 * [watch a `pureseqtmr_run` introduction video on YouTube](https://youtu.be/bLhrrSua8OM)
 * [download that video](http://richelbilderbeek.nl/pureseqtmr.ogv)

## How to use `pureseqtmr_run` online?

  1. Get a GitHub account
  2. Get a Travis CI account (one can simply log in with GitHub)
  3. Fork this repo
  4. Activate Travis CI for your fork
  5. Change the alignment FASTA file, called `my_alignment.fas`
  6. See the results in the Travis CI build log

## Example

`pureseqtmr_run` starts from an alignment:

![A DNA alignment](pics/alignment.png)

`pureseqtmr_run` estimates the evidence (also known as marginal likelihood)
of each model.

```{r}
pureseqtmr::est_marg_liks(
  fasta_filename = system.file("extdata", "primates.fas", package = "pureseqtmr")
)
```

Here is the `pureseqtmr_run` output of that alignment:

```
|site_model_name |clock_model_name   |tree_prior_name                | marg_log_lik| marg_log_lik_sd|    weight|
|:---------------|:------------------|:------------------------------|------------:|---------------:|---------:|
|GTR             |relaxed_log_normal |birth_death                    |    -1811.027|        6.080012| 0.0000000|
|GTR             |relaxed_log_normal |coalescent_bayesian_skyline    |           NA|              NA| 0.0000000|
|GTR             |relaxed_log_normal |coalescent_constant_population |    -1843.625|        9.135051| 0.0000000|
|GTR             |relaxed_log_normal |coalescent_exp_population      |    -1793.983|        4.096881| 0.0302719|
|GTR             |relaxed_log_normal |yule                           |    -1804.508|        5.838469| 0.0000008|
|GTR             |strict             |birth_death                    |    -1798.271|        4.794403| 0.0004154|
|GTR             |strict             |coalescent_bayesian_skyline    |           NA|              NA| 0.0000000|
|GTR             |strict             |coalescent_constant_population |    -1803.812|        5.577658| 0.0000016|
|GTR             |strict             |coalescent_exp_population      |    -1796.305|        5.341554| 0.0029673|
|GTR             |strict             |yule                           |    -1798.523|        4.878357| 0.0003231|
|HKY             |relaxed_log_normal |birth_death                    |    -1796.834|        4.383638| 0.0017480|
|HKY             |relaxed_log_normal |coalescent_bayesian_skyline    |           NA|              NA| 0.0000000|
|HKY             |relaxed_log_normal |coalescent_constant_population |    -1797.376|        4.821398| 0.0010168|
|HKY             |relaxed_log_normal |coalescent_exp_population      |    -1805.887|        5.011170| 0.0000002|
|HKY             |relaxed_log_normal |yule                           |    -1809.258|        6.583333| 0.0000000|
|HKY             |strict             |birth_death                    |    -1793.177|        4.989012| 0.0677362|
|HKY             |strict             |coalescent_bayesian_skyline    |           NA|              NA| 0.0000000|
|HKY             |strict             |coalescent_constant_population |    -1804.641|        5.254055| 0.0000007|
|HKY             |strict             |coalescent_exp_population      |    -1791.317|        4.436302| 0.4352616|
|HKY             |strict             |yule                           |    -1799.619|        5.808298| 0.0001080|
|JC69            |relaxed_log_normal |birth_death                    |    -1933.366|        2.503555| 0.0000000|
|JC69            |relaxed_log_normal |coalescent_bayesian_skyline    |           NA|              NA| 0.0000000|
|JC69            |relaxed_log_normal |coalescent_constant_population |    -1938.315|        3.596683| 0.0000000|
|JC69            |relaxed_log_normal |coalescent_exp_population      |    -1939.448|        3.606480| 0.0000000|
|JC69            |relaxed_log_normal |yule                           |    -1941.170|        3.939826| 0.0000000|
|JC69            |strict             |birth_death                    |    -1932.717|        2.139281| 0.0000000|
|JC69            |strict             |coalescent_bayesian_skyline    |           NA|              NA| 0.0000000|
|JC69            |strict             |coalescent_constant_population |    -1936.867|        3.124300| 0.0000000|
|JC69            |strict             |coalescent_exp_population      |    -1934.601|        2.782317| 0.0000000|
|JC69            |strict             |yule                           |    -1934.778|        2.996254| 0.0000000|
|TN93            |relaxed_log_normal |birth_death                    |    -1801.786|        5.081329| 0.0000124|
|TN93            |relaxed_log_normal |coalescent_bayesian_skyline    |           NA|              NA| 0.0000000|
|TN93            |relaxed_log_normal |coalescent_constant_population |    -1803.874|        5.392158| 0.0000015|
|TN93            |relaxed_log_normal |coalescent_exp_population      |    -1791.263|        4.356108| 0.4594322|
|TN93            |relaxed_log_normal |yule                           |    -1803.101|        4.712677| 0.0000033|
|TN93            |strict             |birth_death                    |    -1798.743|        4.879048| 0.0002591|
|TN93            |strict             |coalescent_bayesian_skyline    |           NA|              NA| 0.0000000|
|TN93            |strict             |coalescent_constant_population |    -1806.633|        5.651098| 0.0000001|
|TN93            |strict             |coalescent_exp_population      |    -1805.624|        5.675836| 0.0000003|
|TN93            |strict             |yule                           |    -1798.215|        3.969258| 0.0004394|
|   |site_model_name |clock_model_name   |tree_prior_name                | marg_log_lik| marg_log_lik_sd|    weight|
|:--|:---------------|:------------------|:------------------------------|------------:|---------------:|---------:|
|34 |TN93            |relaxed_log_normal |coalescent_exp_population      |    -1791.263|        4.356108| 0.4594322|
|19 |HKY             |strict             |coalescent_exp_population      |    -1791.317|        4.436302| 0.4352616|
|16 |HKY             |strict             |birth_death                    |    -1793.177|        4.989012| 0.0677362|
|4  |GTR             |relaxed_log_normal |coalescent_exp_population      |    -1793.983|        4.096881| 0.0302719|
|9  |GTR             |strict             |coalescent_exp_population      |    -1796.305|        5.341554| 0.0029673|
|11 |HKY             |relaxed_log_normal |birth_death                    |    -1796.834|        4.383638| 0.0017480|
|13 |HKY             |relaxed_log_normal |coalescent_constant_population |    -1797.376|        4.821398| 0.0010168|
|40 |TN93            |strict             |yule                           |    -1798.215|        3.969258| 0.0004394|
|6  |GTR             |strict             |birth_death                    |    -1798.271|        4.794403| 0.0004154|
|10 |GTR             |strict             |yule                           |    -1798.523|        4.878357| 0.0003231|
|36 |TN93            |strict             |birth_death                    |    -1798.743|        4.879048| 0.0002591|
|20 |HKY             |strict             |yule                           |    -1799.619|        5.808298| 0.0001080|
|31 |TN93            |relaxed_log_normal |birth_death                    |    -1801.786|        5.081329| 0.0000124|
|35 |TN93            |relaxed_log_normal |yule                           |    -1803.101|        4.712677| 0.0000033|
|8  |GTR             |strict             |coalescent_constant_population |    -1803.812|        5.577658| 0.0000016|
|33 |TN93            |relaxed_log_normal |coalescent_constant_population |    -1803.874|        5.392158| 0.0000015|
|5  |GTR             |relaxed_log_normal |yule                           |    -1804.508|        5.838469| 0.0000008|
|18 |HKY             |strict             |coalescent_constant_population |    -1804.641|        5.254055| 0.0000007|
|39 |TN93            |strict             |coalescent_exp_population      |    -1805.624|        5.675836| 0.0000003|
|14 |HKY             |relaxed_log_normal |coalescent_exp_population      |    -1805.887|        5.011170| 0.0000002|
|38 |TN93            |strict             |coalescent_constant_population |    -1806.633|        5.651098| 0.0000001|
|15 |HKY             |relaxed_log_normal |yule                           |    -1809.258|        6.583333| 0.0000000|
|1  |GTR             |relaxed_log_normal |birth_death                    |    -1811.027|        6.080012| 0.0000000|
|3  |GTR             |relaxed_log_normal |coalescent_constant_population |    -1843.625|        9.135051| 0.0000000|
|26 |JC69            |strict             |birth_death                    |    -1932.717|        2.139281| 0.0000000|
|21 |JC69            |relaxed_log_normal |birth_death                    |    -1933.366|        2.503555| 0.0000000|
|29 |JC69            |strict             |coalescent_exp_population      |    -1934.601|        2.782317| 0.0000000|
|30 |JC69            |strict             |yule                           |    -1934.778|        2.996254| 0.0000000|
|28 |JC69            |strict             |coalescent_constant_population |    -1936.867|        3.124300| 0.0000000|
|23 |JC69            |relaxed_log_normal |coalescent_constant_population |    -1938.315|        3.596683| 0.0000000|
|24 |JC69            |relaxed_log_normal |coalescent_exp_population      |    -1939.448|        3.606480| 0.0000000|
|25 |JC69            |relaxed_log_normal |yule                           |    -1941.170|        3.939826| 0.0000000|
    ++--------+-------+--------+-------+--------+--------+-----+
    |  **                                                      |
0.4 +                                                          +
    |                                                          |
    |                                                          |
0.3 +                                                          +
    |                                                          |
    |                                                          |
0.2 +                                                          +
    |                                                          |
    |                                                          |
0.1 +     *                                                    +
    |                                                          |
  0 +       * ** * ** * * ** * * ** * ** * * ** * * ** * ** *  +
    ++--------+-------+--------+-------+--------+--------+-----+
     0        5      10       15      20       25       30      
[1] "Best model:"
|site_model_name |clock_model_name   |tree_prior_name           | marg_log_lik| marg_log_lik_sd|    weight|
|:---------------|:------------------|:-------------------------|------------:|---------------:|---------:|
|TN93            |relaxed_log_normal |coalescent_exp_population |    -1791.263|        4.356108| 0.4594322|
```

This alignment apparently fits best with an TN93 site model, 
relaxed log-normal clock model and a coalescent exponential population tree prior. 

But it does go neck-to-neck with another model combination (HKY, strict, CEP).

## [FAQ](doc/faq.md)

See [FAQ](doc/faq.md)

## Troubleshooting

### My run takes longer than one hour

Travis CI gives you one hour of computation time. 

If your alignment needs more time, one can:

 * get [a Travis CI paid plan](https://travis-ci.com/plans)
 * use less different site, clock and/or tree models
 * use a shorter alignment
 * use an alignment with less taxa

## Package dependencies

Package                                         |[![Travis CI logo](pics/TravisCI.png)](https://travis-ci.org)                                                 |[![Codecov logo](pics/Codecov.png)](https://www.codecov.io)
------------------------------------------------|---------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------
[babette](https://github.com/ropensci/babette)  |[![Build Status](https://travis-ci.org/ropensci/babette.svg?branch=master)](https://travis-ci.org/ropensci/babette)  |[![codecov.io](https://codecov.io/github/ropensci/babette/coverage.svg?branch=master)](https://codecov.io/github/ropensci/babette/branch/master)
[beautier](https://github.com/ropensci/beautier)|[![Build Status](https://travis-ci.org/ropensci/beautier.svg?branch=master)](https://travis-ci.org/ropensci/beautier)|[![codecov.io](https://codecov.io/github/ropensci/beautier/coverage.svg?branch=master)](https://codecov.io/github/ropensci/beautier/branch/master)
[beastier](https://github.com/ropensci/beastier)|[![Build Status](https://travis-ci.org/ropensci/beastier.svg?branch=master)](https://travis-ci.org/ropensci/beastier)|[![codecov.io](https://codecov.io/github/ropensci/beastier/coverage.svg?branch=master)](https://codecov.io/github/ropensci/beastier/branch/master)
[mauricer](https://github.com/ropensci/mauricer)|[![Build Status](https://travis-ci.org/ropensci/mauricer.svg?branch=master)](https://travis-ci.org/ropensci/mauricer)|[![codecov.io](https://codecov.io/github/ropensci/mauricer/coverage.svg?branch=master)](https://codecov.io/github/ropensci/mauricer/branch/master)
[tracerer](https://github.com/ropensci/tracerer)|[![Build Status](https://travis-ci.org/ropensci/tracerer.svg?branch=master)](https://travis-ci.org/ropensci/tracerer)|[![codecov.io](https://codecov.io/github/ropensci/tracerer/coverage.svg?branch=master)](https://codecov.io/github/ropensci/tracerer/branch/master)

## Windows

Package                                                                       | Status
------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
[babette_on_windows](https://github.com/richelbilderbeek/babette_on_windows)  |[![Build status](https://ci.appveyor.com/api/projects/status/jv76errjocm5d5yq/branch/master?svg=true)](https://ci.appveyor.com/project/richelbilderbeek/babette-on-windows/branch/master)
[beastier_on_windows](https://github.com/richelbilderbeek/beastier_on_windows)|[![Build status](https://ci.appveyor.com/api/projects/status/ralex9sdnnxlwbgx/branch/master?svg=true)](https://ci.appveyor.com/project/richelbilderbeek/beastier-on-windows/branch/master)
[beautier_on_windows](https://github.com/richelbilderbeek/beautier_on_windows)|[![Build status](https://ci.appveyor.com/api/projects/status/blvjo5pulbkqxrhb/branch/master?svg=true)](https://ci.appveyor.com/project/richelbilderbeek/beautier-on-windows/branch/master)
[mauricer_on_windows](https://github.com/richelbilderbeek/mauricer_on_windows)|[![Build status](https://ci.appveyor.com/api/projects/status/bc43iwp68xo2dduh/branch/master?svg=true)](https://ci.appveyor.com/project/richelbilderbeek/mauricer-on-windows/branch/master)
[tracerer_on_windows](https://github.com/richelbilderbeek/tracerer_on_windows)|[![Build status](https://ci.appveyor.com/api/projects/status/jyhck66d6yrbr12h/branch/master?svg=true)](https://ci.appveyor.com/project/richelbilderbeek/tracerer-on-windows/branch/master)

## References

Article about `babette`:

 * Bilderbeek, Richel JC, and Rampal S. Etienne. "babette: BEAUti 2, BEAST 2 and Tracer for R." Methods in Ecology and Evolution (2018). https://doi.org/10.1111/2041-210X.13032

