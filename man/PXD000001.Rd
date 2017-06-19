\name{PXD000001}
\alias{PXD000001-package}
\alias{PXD000001}
\alias{px1files}
\alias{px1get}

\title{ The \code{PXD000001} data set }


\details{

  The package contains a subset of the files from the ProteomeXchange
  PXD000001 data set. This package is meant to be used for teaching and
  demonstration purposes, when no internet access is available. The
  functions available in this package mimic the behaviour of \code{rpx}
  for the local files.

  To obtain a list of available files, use \code{px1files()}, which will
  return a vector of file names. Additional paramters can be used that
  will be passed to \code{list.files}. See below for an example.

  The \code{px1get} function takes one or several file names, as
  returned by \code{px1files()} as input and copies the file(s) into the
  working directory. To copy all the files, use \code{px1get("all")}.

  The data of this package has been retrieved using the
  \code{"scripts/getPXD000001.R"} available in the package directory.
  
}


\references{
  The data was originally published in Gatto L, Christoforou A. Using R
  and Bioconductor for proteomics data analysis. Biochim Biophys
  Acta. 2014 Jan;1844(1 Pt A):42-51. doi:
  10.1016/j.bbapap.2013.04.032. Epub 2013 May 18. Review. PubMed PMID:
  23692960.
}


\seealso{
  The \code{rpx} package, that was used to download the data from the
  ProteomeXchange repository. 
}

\examples{
## Available functions:
library("PXD000001")
ls("package:PXD000001")
fls <- px1files()
fls

## Original data
library("rpx")
px <- PXDataset("PXD000001")
pxfiles(px)

## Get all the data into working dir
px1get("all")
dir()

## Data download script
(f <- system.file("scripts/getPXD000001.R", package = "PXD000001"))
writeLines(readLines(f))
}
