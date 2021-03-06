\name{myTarAuth}
\alias{myTarAuth}
\title{Authentication in 'MyTarget API'}
\description{Authentication in 'MyTarget API' by Code Grant Schema. 
    For detail you can see \href{https://target.my.com/adv/api-marketing/doc/authorization}{documentation}.}
\usage{
myTarAuth(login              = NULL,
          grant_type         = "client_credentials", 
          client_id          = getOption('rmytarget.client_id'),
          client_secret      = getOption("rmytarget.client_secret"),
          agency_client_name = NULL,
          code_grant         = getOption("rmytarget.code_grant_auth"),
          token_path         = getwd())
}

\arguments{
  \item{login}{Account name, used in file name if you save credential}
  \item{grant_type}{Your account grant, get one of two values, "client_credentials" or "agency_client_credentials".}
  \item{client_id}{Yoyr client ID.}
  \item{client_secret}{Your client secret}
  \item{agency_client_name}{Your client user name, only for "agency_client_credentials" grant_type}
  \item{code_grant}{logical, Use code gran authorise schema, \href{https://target.my.com/adv/api-marketing/doc/authorization}{detail}}
  \item{token_path}{Path to directory where you save credential data}
}
\details{
You can save your credential in local file, if yoy enter "yes" at answer  on "Do you want save API credential in local file?" in R console.
}
\value{
MyTarget Authentication R object.
}
\author{
Alexey Seleznev
}

\seealso{
API authorixation \href{https://target.my.com/adv/api-marketing/doc/authorization}{documentation} by 'MyTarget'
}
\examples{
\dontrun{
# Recomendation auth by code grant schema
myTarAuth(login = "my_account_name")

 }						  
}

