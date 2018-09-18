\name{myTarGetTotalStats}
\alias{myTarGetTotalStats}

\title{Get total stats by campaign}
\description{Load data with total statics by campaigns in 'MyTarget'.}
\usage{
myTarGetTotalStats(date_from = Sys.Date() - 7, 
  date_to = Sys.Date(),auth = NULL, 
  token_path = getwd(), login = NULL)
}

\arguments{
  \item{date_from}{Start date}
  \item{date_to}{End date}
  \item{auth}{Auth R object}
  \item{login}{Your login, or client name in MyTarget account}
  \item{token_path}{Path to directory where you save credential data}
}
\value{
Data frame with total statistic
}
\author{
Alexey Seleznev
}
\seealso{
\href{MyTarget API Documentation}{https://target.my.com/doc/api/detailed/#resource_account_statistics}
}
\examples{
\dontrun{
stat <- myTarGetTotalStats(date_to = "2016-08-02",
                           date_to = "2016-08-10")
}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
