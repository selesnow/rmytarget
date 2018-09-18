\name{myTarGetClientList}
\alias{myTarGetClientList}
\title{Get data frame with agency clients}
\description{Load data frame with agency client list from 'MyTarget'.}
\usage{
myTarGetClientList(auth = NULL, token_path = getwd(), 
  login = NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{auth}{MyTarget Autherization R object.}
  \item{login}{Your login, or client name in MyTarget account}
  \item{token_path}{Path to directory where you save credential data}
}
\details{
Use only for agency account.
}
\value{
Data frame with clients account parameters
}
\author{
Alexey Seleznev
}
\seealso{
{MyTarget API Documenation}{https://target.my.com/doc/api/detailed/#resource_agency_clients}
}
\examples{
\dontrun{
clients <- myTarGetClientList(login = "agency_login")
}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
