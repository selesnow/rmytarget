\name{myTarGetStats}
\alias{myTarGetStats}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
myTarGetStats(date_from = Sys.Date() - 7, date_to = Sys.Date(), object_type = "campaigns", object_id = NULL, stat_type = "day", auth = NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{date_from}{
%%     ~~Describe \code{date_from} here~~
}
  \item{date_to}{
%%     ~~Describe \code{date_to} here~~
}
  \item{object_type}{
%%     ~~Describe \code{object_type} here~~
}
  \item{object_id}{
%%     ~~Describe \code{object_id} here~~
}
  \item{stat_type}{
%%     ~~Describe \code{stat_type} here~~
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
function (date_from = Sys.Date() - 7, date_to = Sys.Date(), object_type = "campaigns", 
    object_id = NULL, stat_type = "day", auth = NULL) 
{
    startDate <- paste0(ifelse(nchar(day(date_from)) == 1, paste0(0, 
        day(date_from)), day(date_from)), ".", ifelse(nchar(month(date_from)) == 
        1, paste0(0, month(date_from)), month(date_from)), ".", 
        year(date_from))
    endDate <- paste0(ifelse(nchar(day(date_to)) == 1, paste0(0, 
        day(date_to)), day(date_to)), ".", ifelse(nchar(month(date_to)) == 
        1, paste0(0, month(date_to)), month(date_to)), ".", year(date_to))
    query_body <- paste0("https://target.my.com/api/v1/statistics/", 
        object_type, "/", ifelse(is.null(object_id), "", paste(object_id, 
            collapse = ";")), "/", stat_type, "/", startDate, 
        "-", endDate, ".json")
    statanswer <- GET(query_body, add_headers(Authorization = paste0("Bearer ", 
        auth$access_token)))
    stop_for_status(statanswer)
    statRaw <- content(statanswer, "parsed", "application/json")
    data <- data.frame(stringsAsFactors = FALSE)
    for (i in 1:length(statRaw)) {
        for (z in 1:length(statRaw[[i]]$detailed_stat)) {
            data <- rbind(data, data.frame(CampaignName = statRaw[[i]]$name, 
                CampaignID = statRaw[[i]]$id, Date = statRaw[[i]]$detailed_stat[[z]]$date, 
                Cost = statRaw[[i]]$detailed_stat[[z]]$amount, 
                Clicks = statRaw[[i]]$detailed_stat[[z]]$clicks, 
                Impressions = statRaw[[i]]$detailed_stat[[z]]$shows, 
                CTR = statRaw[[i]]$detailed_stat[[z]]$ctr, stringsAsFactors = FALSE))
        }
    }
    data$Date <- as.Date(data$Date, "\%d.\%m.\%Y")
    data$Cost <- as.numeric(data$Cost)
    data$Clicks <- as.integer(data$Clicks)
    data$Impressions <- as.integer(data$Impressions)
    data$CTR <- as.numeric(data$CTR)
    return(data)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
