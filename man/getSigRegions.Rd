% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/export_functions.R
\name{getSigRegions}
\alias{getSigRegions}
\title{Return SNPs in significant regions}
\usage{
getSigRegions(SNPset, method = "Gprime", alpha = 0.05, interval = 99)
}
\arguments{
\item{SNPset}{Data frame SNP set containing previously filtered SNPs.}

\item{method}{either "Gprime" or "QTLseq". The method for detecting significant regions.}

\item{alpha}{numeric. The required false discovery rate alpha for use with \code{method = "Gprime"}}

\item{interval}{numeric. For use eith \code{method = "QTLseq"} The Takagi based confidence interval requested. This will find the column named "CI_\*\*", where \*\* is the requested interval, i.e. 99.}
}
\description{
The function takes a SNP set after calculation of p- and q-values or Takagi confidence intervals and returns
a list containing all SNPs with q-values or deltaSNP below a set alpha or confidence intervals, respectively. Each entry in the list
is a SNP set data frame in a contiguous region with adjusted pvalues lower
than the set false discovery rate alpha.
}
