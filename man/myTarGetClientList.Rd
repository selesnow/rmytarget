\name{myTarGetClientList}
\alias{myTarGetClientList}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
myTarGetClientList(auth = NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{auth}{
%%     ~~Describe \code{auth} here~~
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
function (auth = NULL) 
{
    if (is.null(auth)) {
        stop("Укажите объект с учётными данными, аргумент auth является обязательным")
    }
    asw <- GET("https://target.my.com/api/v1/clients.json", add_headers(Authorization = paste0("Bearer ", 
        mtAuth$access_token)))
    stop_for_status(asw)
    answer <- content(asw, "parsed", "application/json")
    clients <- data.frame(clients = character(), user = character(), 
        stringsAsFactors = F)
    for (i in 1:length(answer)) {
        clients <- rbind(clients, data.frame(clients = answer[[i]]$additional_info$client_name, 
            user = answer[[i]]$username))
    }
    return(clients)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
