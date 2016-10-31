\name{myTarGetTotalStats}
\alias{myTarGetTotalStats}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
myTarGetTotalStats(date_from = Sys.Date() - 7, date_to = Sys.Date(), auth = NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{date_from}{
%%     ~~Describe \code{date_from} here~~
}
  \item{date_to}{
%%     ~~Describe \code{date_to} here~~
}
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
function (date_from = Sys.Date() - 7, date_to = Sys.Date(), auth = NULL) 
{
    if (is.null(auth)) {
        stop("Укажите объект с учётными данными, аргумент auth является обязательным")
    }
    statanswer <- GET(paste0("https://target.my.com/api/v1/campaigns/statistics.json?date_from=", 
        date_from, "&date_to=", date_to), add_headers(Authorization = paste0("Bearer ", 
        auth$access_token)))
    stop_for_status(statanswer)
    statRaw <- content(statanswer, "parsed", "application/json")
    data <- sapply(statRaw$campaigns, FUN = function(x) x <- data.frame(cbind(Date = x$date, 
        CampaignName = x$campaign_name, CampaignID = x$campaign_id, 
        Reach = x$general$uniques, CTR = x$general$ctr, Cost = x$general$amount, 
        Impressions = x$general$shows, Clicks = x$general$clicks, 
        UniquesIncrement = x$general$uniques_increment), stringsAsFactors = FALSE), 
        simplify = F)
    TotalData <- data.frame(stringsAsFactors = FALSE)
    for (i in data) {
        TotalData <- rbind(TotalData, i)
    }
    TotalData$Date <- as.Date(TotalData$Date)
    TotalData$CampaignName <- as.character(TotalData$CampaignName)
    TotalData$CampaignID <- as.character(TotalData$CampaignID)
    TotalData$Reach <- as.integer(TotalData$Reach)
    TotalData$CTR <- as.numeric(TotalData$CTR)
    TotalData$Cost <- as.numeric(TotalData$Cost)
    TotalData$Impressions <- as.integer(TotalData$Impressions)
    TotalData$Clicks <- as.integer(TotalData$Clicks)
    TotalData$UniquesIncrement <- as.integer(TotalData$UniquesIncrement)
    return(TotalData)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
