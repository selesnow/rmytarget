\name{myTarGetClientList}
\alias{myTarGetClientList}
\title{Get data frame with agency clients}
\description{myTarGetClientList load data frame with agency client list.}
\usage{
myTarGetClientList(auth = NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{auth}{Authorization R object}
}
\details{}
\value{
%%  \item{clients }{Client name in your agancy account}
%%  \item{user }{Client user ID in MyTarget}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
Alexey Seleznev
}

\seealso{
MyTarget API Documenation - https://target.my.com/doc/api/detailed/#resource_campaigns
}
\examples{
myTargetClients <- myTarGetClientList(mtAuth)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
