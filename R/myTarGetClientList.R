myTarGetClientList <-
function(auth = NULL){
  if(is.null(auth)){stop("Укажите объект с учётными данными, аргумент auth является обязательным")}
  asw <- GET("https://target.my.com/api/v1/clients.json",add_headers(Authorization = paste0("Bearer ",mtAuth$access_token)))
  stop_for_status(asw)
  answer <- content(asw, "parsed", "application/json")
  
  clients <- data.frame(clients = character(), user = character(), stringsAsFactors = F)
  #Название любого аккаунта
  for(i in 1:length(answer)){
    clients <- rbind(clients, data.frame(clients = answer[[i]]$additional_info$client_name,user = answer[[i]]$username))
  }
  return(clients)
}
