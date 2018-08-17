\name{myTarAuth}
\alias{myTarAuth}
\title{Authentication in myTarget API}
\description{Function myTarAuth using by get api token.}
\usage{
myTarAuth(grant_type = "client_credentials", client_id = NULL, client_secret = NULL, agency_client_name = NULL)
}

\arguments{
  \item{grant_type}{Your account grant, get one of two values, "client_credentials" or "agency_client_credentials".}
  \item{client_id}{Yoyr client ID.}
  \item{client_secret}{Your client secret}
  \item{agency_client_name}{Your client user name, only for "agency_client_credentials" grant_type}
  \item{code_grant}{logical, Use code gran authorise schema, href\{detail}{https://target.my.com/adv/api-marketing/doc/authorization}}
  \item{token_path}{Path to directory where you save credential data}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
MyTarget Authentication R object.
}
\author{
Alexey Seleznev
}

\seealso{
API authorixation documentation by MyTarget - https://target.my.com/adv/api-marketing/doc/authorization
}
\examples{

#For agancy accounts
myTargetAuth <- myTarAuth(grant_type = "agency_client_credentials",
                          client_id = "XXXXXXXXXX",
                          client_secret = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
                          agency_client_name = "xxxxxxxxx@agency_client")

#For simple clients account
myTargetAuth <- myTarAuth(grant_type = "client_credentials",
                          client_id = "XXXXXXXXXX",
                          client_secret = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx")						  
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
