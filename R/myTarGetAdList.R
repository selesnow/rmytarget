myTarGetAdList <-
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
      ads <- GET(stringr::str_interp("${getOption('rmytarget.url')}api/v2/banners.json?fields=id,status,urls,campaign_id,textblocks,moderation_status,created,updated,call_to_action&limit=${limit}&offset=${offset}"),add_headers(Authorization = paste0("Bearer ",auth$access_token)))
      stop_for_status(ads)
      adsRaw <- content(ads, "parsed", "application/json")
      
      for (i in 1:length(adsRaw$items)) {
        temp <- list(id                = adsRaw$items[[i]]$id,
                     status            = adsRaw$items[[i]]$status,
                     updated           = adsRaw$items[[i]]$updated,
                     moderation_status = adsRaw$items[[i]]$moderation_status,
                     call_to_action    = adsRaw$items[[i]]$call_to_action,
                     created           = adsRaw$items[[i]]$created,
                     campaign_id       = adsRaw$items[[i]]$campaign_id,
                     title             = adsRaw$items[[i]]$textblocks$primary$title,
                     text              = adsRaw$items[[i]]$textblocks$primary$text,
                     url               = adsRaw$items[[i]]$urls$primary$url,
                     url_object_id     = adsRaw$items[[i]]$urls$primary$url_object_id,
                     url_object_type   = adsRaw$items[[i]]$urls$primary$url_object_type,
                     url_id            = adsRaw$items[[i]]$urls$primary$id)
        
        result <- append(result, list(temp))
        rm(temp)
        
      }
      
      packageStartupMessage("=",appendLF = F)
      Sys.sleep(request_speed)
      count  <- adsRaw$count
      offset <- offset + limit
      
    }
    
    packageStartupMessage("| Done",appendLF = T)
    adsList <- data.frame(do.call("rbind", result))
    return(adsList)
  }

