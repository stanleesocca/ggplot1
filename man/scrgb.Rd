% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/scale-cont-colour.r
\name{scrgb}
\alias{scrgb}
\alias{scfillrgb}
\title{Scale: colour (rgb)
Scale continuous variables to red, green and blue components of colour.}
\usage{
scrgb(plot, name = "", to = list())

scfillrgb(plot, name = "", to = list())
}
\arguments{
\item{plot}{plot}

\item{name}{namen of the scale (used in the legend)}

\item{to}{named list of target ranges (r.to, g.to, b.to, a.to)}
}
\description{
The RGB colour space is NOT perceptually uniform.  Use
this scale with care.  It is extremely ill-advised to map variables to more
than one of r, g, b, or a.
}
\details{
Note: alpha mappings only work with the Quartz and PDF devices.
}
\examples{
library(ggplot2movies)
p <- scrgb(ggplot(movies, aes=list(y=rating, x=year)))
ggpoint(p, list(r=year))
ggpoint(p, list(b=rating))
ggpoint(p, list(b=rating, r=1))
scrgb(ggpoint(p, list(b=rating, r=1)), list(b.to=c(0.25,0.75)))
ggpoint(p, list(b=rating, r=year))
ggpoint(p, list(b=rating, r=year, g=year))
}
