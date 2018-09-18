\name{rmytarget-package}
\alias{rmytarget-package}
\alias{rmytarget}
\docType{package}
\title{Paxkage for load data from 'MyTarget API'.}
\description{Load data from API 'MyTarget' into R, by agancy clients and campaigns}
\details{

The DESCRIPTION file:
\packageDESCRIPTION{rmytarget}
\packageIndices{rmytarget}
}
\author{Alexey Seleznev}
\references{
\href{1. MyTarget API documents}{https://target.my.com/adv/api-marketing/doc/}
\href{2. Authorization}{https://target.my.com/adv/api-marketing/doc/authorization}
}

\keyword{ package }
\examples{
\dontrun{
# Get objects
## Get ads
Ads <- myTarGetAdList(login = "my_test_client")

## Get campaigns
Campaigns <- myTarGetCampaignList(login = "my_test_client")

# Get statistic
## Get summary statistic						  
t_stat<- myTarGetTotalStats(date_to = "2016-08-02",
                            date_to = "2016-08-10",
							login = "my_test_client")

## Get stat by campaigns
c_stat <- myTarGetStats(date_from = "2016-08-01",
                        date_to = "2016-08-10",
                        object_type = "campaigns",
                        object_id = cCampaigns$id,
                        stat_type = "day",
						login = "my_test_client")
						
## Get stat by ads
a_stat <- myTarGetStats(date_from = "2016-08-01",
                        date_to = "2016-08-10",
                        object_type = "banners",
                        object_id = Ads$id,
                        stat_type = "day",
						login = "my_test_client")
}
}
