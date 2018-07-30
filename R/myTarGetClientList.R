myTarGetClientList <-
function(auth = NULL){
  if(is.null(auth)){stop("Óêàæèòå îáúåêò ñ ó÷¸òíûìè äàííûìè, àðãóìåíò auth ÿâëÿåòñÿ îáÿçàòåëüíûì")}
  asw <- GET("https://target.my.com/api/v1/clients.json",add_headers(Authorization = paste0("Bearer ",auth$access_token)))
  stop_for_status(asw)
  answer <- content(asw, "parsed", "application/json")
  
  clients <- data.frame(clients = character(), user = character(), stringsAsFactors = F)
  #Íàçâàíèå ëþáîãî àêêàóíòà
  for(i in 1:length(answer)){
    clients <- rbind(clients, data.frame(clients = answer[[i]]$additional_info$client_name,user = answer[[i]]$username))
  }
  return(clients)
}
