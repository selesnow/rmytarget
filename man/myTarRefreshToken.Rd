\name{myTarRefreshToken}
\alias{myTarRefreshToken}

\title{Refresh access token}
\description{Refresh old access token}
\usage{
myTarRefreshToken(old_auth = NULL, client_id = NULL, 
  client_secret = NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{old_auth}{Your old auth object}
  \item{client_id}{Your client ID}
  \item{client_secret}{Your client secret}
}
\value{R auth object with new acess token}
\author{
Alexey Seleznev
}
\seealso{
\href{https://target.my.com/help/advertisers/api-marketing/ru}{MyTarget API Documentation}
}
\examples{
\dontrun{
auth <- myTarRefreshToken(old_auth = myTargetAuth,
                          client_id = "xxxx",
                          client_secret = "xxxx.")
}
}
