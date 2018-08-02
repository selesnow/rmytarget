myTarGetStats <-
function(date_from = Sys.Date() - 7,
         date_to = Sys.Date(), 
         object_type = "campaigns",
         object_id = NULL, 
         stat_type = "day",
         auth = NULL,
         token_path = getwd(), 
         login = NULL){
  
  if (is.null(auth)) {
    auth <- myTarAuth(login = login, token_path = token_path)
  }
  
  startDate <- paste0(ifelse(nchar(day(date_from)) == 1, paste0(0,day(date_from)),day(date_from)),".",
                      ifelse(nchar(month(date_from)) == 1, paste0(0,month(date_from)),month(date_from)),".",
                      year(date_from))
  
  endDate  <- paste0(ifelse(nchar(day(date_to)) == 1, paste0(0,day(date_to)),day(date_to)),".",
                    ifelse(nchar(month(date_to)) == 1, paste0(0,month(date_to)),month(date_to)),".",
                    year(date_to))
  
  query_body <- paste0(stringr::str_interp("${getOption('rmytarget.url')}api/v1/statistics/"),object_type,"/",ifelse(is.null(object_id),"",paste(object_id,collapse = ";")),"/",stat_type,"/",startDate,"-",endDate,".json")
  
  statanswer <- GET(query_body, add_headers(Authorization = paste0("Bearer ",auth$access_token)))  
  stop_for_status(statanswer)
  statRaw <- content(statanswer, "parsed", "application/json")
  
  
  data <- data.frame(stringsAsFactors = FALSE)
  for(i in seq_along(1:length(statRaw))){
    for(z in seq_along(1:length(statRaw[[i]]$detailed_stat))){
      if (length(statRaw[[i]]$detailed_stat) == 0) next
      data <- rbind(data, data.frame(CampaignName = statRaw[[i]]$name,
                                     CampaignID = statRaw[[i]]$id,
                                     Date = statRaw[[i]]$detailed_stat[[z]]$date,
                                     Cost = statRaw[[i]]$detailed_stat[[z]]$amount,
                                     Clicks = statRaw[[i]]$detailed_stat[[z]]$clicks,
                                     Impressions = statRaw[[i]]$detailed_stat[[z]]$shows,
                                     CTR = statRaw[[i]]$detailed_stat[[z]]$ctr,
                                     stringsAsFactors = FALSE))
    }
  }
  
  data$Date <- as.Date(data$Date, "%d.%m.%Y")
  data$Cost <- as.numeric(data$Cost)
  data$Clicks <- as.integer(data$Clicks)
  data$Impressions <- as.integer(data$Impressions)
  data$CTR <- as.numeric(data$CTR)

  return(data)
}

