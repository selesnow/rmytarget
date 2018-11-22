myTarGetCampaignList <-
  function(auth = NULL, login = NULL, token_path = getwd()){
    
    if (is.null(auth)) {
      auth <- myTarAuth(login = login, token_path = token_path)
    }
    
    limit  <- 50
    offset <- 0
    count  <- NULL
    result <- list()
    
    packageStartupMessage("Loading |",appendLF = F)
    
    while ( is.null(count) || count > offset ) {
      camp <- GET(stringr::str_interp("${getOption('rmytarget.url')}api/v2/campaigns.json?fields=id,name,status,mixing,created,date_start,date_end,utm&limit=${limit}&offset=${offset}"),add_headers(Authorization = paste0("Bearer ",auth$access_token)))
      stop_for_status(camp)
      campRaw <- content(camp, "parsed", "application/json")
      
      result <- append(result, campRaw$items)
      
      packageStartupMessage("=",appendLF = F)
      Sys.sleep(0.7)
      
      count  <- campRaw$count
      offset <- offset + limit
      
    }
    
    campList <- data.frame(do.call("rbind", result))
    packageStartupMessage("| Done",appendLF = T)
    return(campList)
  }
