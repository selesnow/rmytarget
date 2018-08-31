myTarGetAdList <-
  function(auth = NULL, login = NULL, token_path = getwd()){
    
    if (is.null(auth)) {
      auth <- myTarAuth(login = login, token_path = token_path)
    }

    
    ads <- GET(stringr::str_interp("${getOption('rmytarget.url')}api/v1/banners.json?fields=id,status,system_status,url,campaign,textblocks,moderation_status,created,updated"),add_headers(Authorization = paste0("Bearer ",auth$access_token)))
    stop_for_status(ads)
    adsRaw <- content(ads, "parsed", "application/json")
    
    adsList <- data.frame()
    
    for (i in seq_along(1:length(adsRaw))) {
          adsList <- rbind(adsList, 
                      data.frame(id               = adsRaw[[i]]$id,
                                status            = adsRaw[[i]]$status,
                                moderation_status = adsRaw[[i]]$moderation_status,
                                system_status     = adsRaw[[i]]$system_status,
                                url               = adsRaw[[i]]$url,
                                campaign_id       = adsRaw[[i]]$campaign$id,
                                updated           = adsRaw[[i]]$updated))
    }
    
    return(adsList)
  }


