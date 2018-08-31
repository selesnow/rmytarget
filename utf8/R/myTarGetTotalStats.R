myTarGetTotalStats <-
function(date_from = Sys.Date() - 7, date_to = Sys.Date(),auth = NULL, token_path = getwd(), login = NULL){
  if (is.null(auth)) {
    auth <- myTarAuth(login = login, token_path = token_path)
  }
  statanswer <- GET(paste0(stringr::str_interp("${getOption('rmytarget.url')}api/v1/campaigns/statistics.json?date_from="),date_from,"&date_to=",date_to),add_headers(Authorization = paste0("Bearer ",auth$access_token)))
  stop_for_status(statanswer)
  statRaw <- content(statanswer, "parsed", "application/json")
  
  
  data <- sapply(statRaw$campaigns, FUN = function(x)   x <- data.frame(cbind(Date = x$date,
                                                                              CampaignName = x$campaign_name,
                                                                              CampaignID = x$campaign_id,
                                                                              Reach = x$general$uniques,
                                                                              CTR = x$general$ctr,
                                                                              Cost = x$general$amount,
                                                                              Impressions = x$general$shows,
                                                                              Clicks = x$general$clicks,
                                                                              UniquesIncrement = x$general$uniques_increment),
                                                                              stringsAsFactors =  FALSE), simplify = F)
  
  TotalData <- data.frame(stringsAsFactors =  FALSE)
  for(i in data){
    TotalData <- rbind(TotalData, i)
  }
  
  TotalData$Date             <- as.character(TotalData$Date)
  TotalData$CampaignName     <- as.character(TotalData$CampaignName)
  TotalData$CampaignID       <- as.character(TotalData$CampaignID)
  TotalData$Reach            <- as.integer(TotalData$Reach)
  TotalData$CTR              <- as.numeric(TotalData$CTR)
  TotalData$Cost             <- as.numeric(TotalData$Cost)
  TotalData$Impressions      <- as.integer(TotalData$Impressions)
  TotalData$Clicks           <- as.integer(TotalData$Clicks)
  TotalData$UniquesIncrement <- as.integer(TotalData$UniquesIncrement)
  
  return(TotalData)
}
