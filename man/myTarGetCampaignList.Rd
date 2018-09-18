\name{myTarGetCampaignList}
\alias{myTarGetCampaignList}

\title{Get campaign list.}
\description{Get data frame with 'MyTarget' campaing id, name and parameters}
\usage{
myTarGetCampaignList(auth = NULL, login = NULL, token_path = getwd())
}

\arguments{
  \item{auth}{MyTarget Autherization R object.}
  \item{login}{Your login, or client name in MyTarget account}
  \item{token_path}{Path to directory where you save credential data}
}
\value{
Data frame with campaigns list
}
\author{
Alexey Seleznev
}
\seealso{
\href{MyTarget API ocumentation}{https://target.my.com/doc/api/detailed/#resource_campaigns}
}
\examples{
\dontrun{
myTargetCampaign <- myTarGetCampaignList(myTargetAuth)
}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
