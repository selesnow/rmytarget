\name{myTarGetAdList}
\alias{myTarGetAdList}

\title{Get ads list.}
\description{Get data frame with myTarget ads parameters}
\usage{
myTarGetCampaignList(auth = NULL, login = NULL, token_path = getwd())
}

\arguments{
  \item{auth}{MyTarget Autherization R object.}
  \item{login}{Your login, or client name in MyTarget account}
  \item{token_path}{Path to directory where you save credential data}
}
\details{}
\value{
Data frame with campaigns list
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
Alexey Seleznev
}
\note{
}



\seealso{
{MyTarget API Documentation}{https://target.my.com/doc/api/detailed/#resource_import_campaign}
}
\examples{
myTargetCampaign <- myTarGetAdList(login = "my_test_client")
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
