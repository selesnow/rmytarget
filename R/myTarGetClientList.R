myTarGetClientList <-
function(auth = NULL, token_path = getwd(), login = NULL){
  if (is.null(auth)) {
    auth <- myTarAuth(login = login, token_path = token_path)
    }
  asw <- GET(stringr::str_interp("${getOption('rmytarget.url')}api/v1/clients.json"),add_headers(Authorization = paste0("Bearer ",auth$access_token)))
  stop_for_status(asw)
  answer <- content(asw, "parsed", "application/json")
  
  clients <- data.frame(clients = character(), user = character(), stringsAsFactors = F)

  for(i in 1:length(answer)){
    clients <- rbind(clients, data.frame(clients = answer[[i]]$additional_info$client_name,user = answer[[i]]$username))
  }
  return(clients)
}

