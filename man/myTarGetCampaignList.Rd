\name{myTarGetCampaignList}
\alias{myTarGetCampaignList}

\title{Get campaign list.}
\description{myTarGetCampaignList get data frame with myTarget campaing id, name and parameters}
\usage{
myTarGetCampaignList(auth = NULL)
}

\arguments{
  \item{auth}{ MyTarget Autherization R object.}
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
MyTarget API ocumentation - https://target.my.com/doc/api/detailed/#resource_import_campaign
}
\examples{
myTargetCampaign <- myTarGetCampaignList(myTargetAuth)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
