\name{pack.admin.input.peaks} 
\alias{pack.admin.input.peaks} 
\title{likeLTD::pack.admin.input.peaks} 
\usage{pack.admin.input.peaks(peaksFile, refFile, caseName='dummy',
                        databaseFile=NULL, kit=NULL, linkageFile=NULL,
                        detectionThresh=20,outputPath=getwd())}
\arguments{
  \item{peaksFile}{Crime scene profile with peak height data}
  \item{refFile}{Reference profiles}
  \item{caseName}{Name of the current case}
  \item{databaseFile}{Path to the allele database}
  \item{kit}{Database to use if \code{databaseFile} not specified}
  \item{linkageFile}{Path to file with recombination rates for linked loci}
  \item{outputPath}{Path where the output should be stored. Defaults to current
  working directory.}
  \item{detectionThresh}{The detection threshold used to analyse peak heights from 
	electrophoresis. This may be a single value, or a list of one value per locus. 
	No peaks in the CSP should have a peak height below this 
	value if a single value. No peaks in a given locus should have a peak height below
	the specified locus value.}
}
\description{Packs and verifies administrative information. Can be used as partial
input for \code{defence.hypothesis.peaks} and \code{prosecution.hypothesis.peaks}}
\examples{
\dontrun{
# datapath to example files
datapath = file.path(system.file("extdata", package="likeLTD"),"laboratory")

# File paths and case name for allele report
admin = pack.admin.input.peaks(
            peaksFile = file.path(datapath, 'laboratory-CSP.csv'),
            refFile = file.path(datapath, 'laboratory-reference.csv'),
            caseName = "Laboratory",
            detectionThresh = 20
             )
}
}
