\name{myTarGetTotalStats}
\alias{myTarGetTotalStats}

\title{Get total stats by campaign}
\description{Function myTarGetTotalStats load data with total statics by campaigns in MyTarget.}
\usage{
myTarGetTotalStats(date_from = Sys.Date() - 7, date_to = Sys.Date(), auth = NULL)
}

\arguments{
  \item{date_from}{Start date}
  \item{date_to}{End date}
  \item{auth}{Auth R object}
}
\details{
}
\value{
Data frame with total statistic
}
\references{

}
\author{
Alexey Seleznev
}
\note{

}


\seealso{
MyTarget API Documentation - https://target.my.com/doc/api/detailed/#resource_account_statistics
}
\examples{
myTargetSummary <- myTarGetTotalStats(date_to = "2016-08-02",
                                      date_to = "2016-08-10",
                                      auth = myTargetAuth)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
