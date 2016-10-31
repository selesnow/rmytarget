\name{myTarRefreshToken}
\alias{myTarRefreshToken}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
myTarRefreshToken(old_auth = NULL, client_id = NULL, client_secret = NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{old_auth}{
%%     ~~Describe \code{old_auth} here~~
}
  \item{client_id}{
%%     ~~Describe \code{client_id} here~~
}
  \item{client_secret}{
%%     ~~Describe \code{client_secret} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (old_auth = NULL, client_id = NULL, client_secret = NULL) 
{
    if (is.null(old_auth) | is.null(client_id) | is.null(client_secret)) {
        stop("¬се аргументы функции €вл€ютс€ об€ательными, необходимо заполнить значени€ аргументов ", 
            call. = FALSE)
    }
    query_body <- paste0("grant_type=", "refresh_token", "&refresh_token=", 
        old_auth$refresh_token, "&client_id=", client_id, "&client_secret=", 
        client_secret)
    mtRefrsh <- POST("https://target.my.com/api/v2/oauth2/token.json", 
        body = query_body, content_type(type = "application/x-www-form-urlencoded"))
    stop_for_status(mtRefrsh)
    mtRefrsh <- content(mtRefrsh, "parsed", "application/json")
    old_auth$access_token <- mtRefrsh$access_token
    return(old_auth)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
