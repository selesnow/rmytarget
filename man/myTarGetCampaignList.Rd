\name{myTarGetCampaignList}
\alias{myTarGetCampaignList}

\title{Get campaign list.}
\description{Get data frame with 'MyTarget' campaing id, name and parameters}
\usage{
myTarGetCampaignList(auth = NULL, 
           login = NULL, 
           token_path = getwd(),
		   request_speed = 1.2)
}

\arguments{
  \item{auth}{MyTarget Autherization R object.}
  \item{login}{Your login, or client name in MyTarget account}
  \item{token_path}{Path to directory where you save credential data}
  \item{request_speed}{Integer, or one of slow, normal, fast. Pause between requests to API}
}
\value{
Data frame with campaigns list
}
\author{
Alexey Seleznev
}
\seealso{
\href{https://target.my.com/help/advertisers/api-marketing/ru}{MyTarget API ocumentation}
}
\examples{
\dontrun{
myTargetCampaign <- myTarGetCampaignList(myTargetAuth)
}
}

