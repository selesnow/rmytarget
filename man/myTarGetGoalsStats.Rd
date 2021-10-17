\name{myTarGetGoalsStats}
\alias{myTarGetGoalsStats}

\title{Get stat by any 'MyTarget API' objects}
\description{Load data frame with statistic by any API objects.}
\usage{
myTarGetGoalsStats(
    date_from       = Sys.Date() - 7,
    date_to         = Sys.Date(), 
    object_type     = "campaigns",
    object_id       = NULL, 
    attribution     = c("impression", "conversion"),
    conversion_type = c("postview", "postclick", "total"),
    auth            = NULL,
    token_path      = getwd(), 
    login           = NULL
) 
}

\arguments{
  \item{date_from}{Start date}
  \item{date_to}{End date}
  \item{object_type}{API object typr, character value, apply one of campaigns, banners, users}
  \item{object_id}{ID of API object (id campaign or any object}
  \item{attribution}{Attributing by event time or impression time. Available options: conversion, impression}
  \item{conversion_type}{Conversion type: postclick - postclick, postview - postview, total - total.}
  \item{auth}{R auth object}
  \item{token_path}{Path to directory where you save credential data}
  \item{login}{Your login, or client name in MyTarget account}
}
\value{
Data frame with statistic.
}

\details{
For more details go \href{https://target.my.com/adv/api-marketing/doc/stat-v2#goals}{this link}. 
}

\author{
Alexey Seleznev
}
\seealso{
MyTarget API documentation - https://target.my.com/doc/api/detailed/#resource_statistics
}
\examples{
\dontrun{
conv_stat <- myTarGetGoalsStats(
    date_from       = '2021-09-01', 
    date_to         = '2021-09-05',
    object_type     = 'campaigns',
    object_id       = c(111, 222, 333, 444, 555),
    attribution     = 'impression',
    conversion_type = 'postview'
)
}
}

