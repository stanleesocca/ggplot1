
<!-- README.md is generated from README.Rmd. Please edit that file -->
ggplot1
=======

[![Travis-CI Build Status](https://travis-ci.org/hadley/ggplot1.svg?branch=master)](https://travis-ci.org/hadley/ggplot1)

ggplot1 is update of ggplot, the package that preceded ggplot2. ggplot1 is mostly made available out of historical interest, to illustrate how my thinking about API design in R has evolved over the years.

Installation
------------

You can install ggplot1 from github with:

``` r
# install.packages("devtools")
devtools::install_github("ggplot1/hadley")
```

Usage
-----

``` r
library(ggplot1)

mtcars %>% 
  ggplot(list(x = mpg, y = wt)) %>% 
  ggpoint()
```

![](README-ex-1.png)

``` r

mtcars %>% 
  ggplot(list(x = mpg, y = wt)) %>% 
  ggpoint(list(colour = gear)) %>% 
  scbrewer()
```

![](README-ex-2.png)
