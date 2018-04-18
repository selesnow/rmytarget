myTarAuth <-
function(grant_type = "client_credentials", client_id = NULL,client_secret = NULL,agency_client_name = NULL){
  
  query_body <- paste0("grant_type=", grant_type,
                       "&client_id=", client_id,
                       "&client_secret=", client_secret,
                       ifelse(grant_type == "agency_client_credentials", paste0("&agency_client_name=",agency_client_name),""))
  
  mtAuth <- POST("https://target.my.com/api/v2/oauth2/token.json",body = query_body, content_type(type = "application/x-www-form-urlencoded"))
  
  stop_for_status(mtAuth)
  
  mtAuth <- content(mtAuth, "parsed", "application/json")
}
