myTarGetCampaignList <-
  function(auth = NULL, 
           login = NULL, 
           token_path = getwd(),
		   request_speed = 1.2){
    
    if (is.null(auth)) {
      auth <- myTarAuth(login = login, token_path = token_path)
    }
	
    if ( request_speed %in% c("slow", "normal", "fast")) {
		  
		  request_speed <- switch(EXPR     = request_speed,
								  "slow"   = 2,
								  "normal" = 1.2,
								  "fast"   = 0.8)
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
      Sys.sleep(request_speed)
      
      count  <- campRaw$count
      offset <- offset + limit
      
    }
    
    campList <- data.frame(do.call("rbind", result))
    packageStartupMessage("| Done",appendLF = T)
    return(campList)
  }
