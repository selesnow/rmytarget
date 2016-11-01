\name{myTarRefreshToken}
\alias{myTarRefreshToken}

\title{Refresh access token}
\description{myTarRefreshToken refresh old access token}
\usage{
myTarRefreshToken(old_auth = NULL, client_id = NULL, client_secret = NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{old_auth}{Your old auth object}
  \item{client_id}{Your client ID}
  \item{client_secret}{Your client secret}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{R auth object with new acess token}
\references{

}
\author{
Alexey Seleznev
}
\note{

}



\seealso{
MyTarget API Documentation - https://target.my.com/doc/api/detailed/#resource_oauth2_access_token
}
\examples{
myTargetAuth <- myTarRefreshToken(old_auth = myTargetAuth,
                                  client_id = "xxxxxxxxxxxxxxxxx",
                                  client_secret = "xxxxxxxxxxxxxxxxxxxxxxxxxxxx...")


}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
