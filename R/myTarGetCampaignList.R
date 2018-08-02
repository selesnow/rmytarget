myTarGetCampaignList <-
function(auth = NULL, login = NULL, token_path = getwd()){

  if (is.null(auth)) {
    auth <- myTarAuth(login = login, token_path = token_path)
  }
  
  camp <- GET(stringr::str_interp("${getOption('rmytarget.url')}api/v1/campaigns.json?fields=id,name,status,mixing"),add_headers(Authorization = paste0("Bearer ",auth$access_token)))
  stop_for_status(camp)
  campRaw <- content(camp, "parsed", "application/json")
  
  campList <- data.frame(id = character(), name = character(), status = character(), mixing = character())
  for(i in 1:length(campRaw)){
    
    campList <- rbind(campList, data.frame(id = campRaw[[i]]$id, 
                                           name = campRaw[[i]]$name, 
                                           status = campRaw[[i]]$status, 
                                           mixing = campRaw[[i]]$mixing))
  }
  return(campList)
}




