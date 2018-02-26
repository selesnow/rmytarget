\name{rmytarget-package}
\alias{rmytarget-package}
\alias{rmytarget}
\docType{package}
\title{Paxkage for load data from MyTarget API.}
\description{Load data from API MyTarget into R, by agancy clients and campaigns}
\details{

The DESCRIPTION file:
\packageDESCRIPTION{rmytarget}
\packageIndices{rmytarget}

}
\author{Alexey Seleznev}
\references{}
~~ Optionally other standard keywords, one per line, from file KEYWORDS in the R documentation directory ~~
\keyword{ package }
\seealso{
~~ Optional links to other man pages, e.g. ~~
~~ \code{\link[<pkg>:<pkg>-package]{<pkg>}} ~~
}
\examples{
#Get access token
myTargetAuth <- myTarAuth(grant_type = "client_credentials",
                          client_id = "XXXXXXXXXX",
                          client_secret = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx")	

#Get statistic						  
myTargetSummary <- myTarGetTotalStats(date_to = "2016-08-02",
                                      date_to = "2016-08-10",
                                      auth = myTargetAuth)

#
}
