myTarGetStats <- 
  function(date_from       = Sys.Date() - 7,
           date_to         = Sys.Date(), 
           object_type     = "campaigns",
           object_id       = NULL, 
           stat_type       = "day",
           metrics         = "base",
           package_id      = NULL,
           attribution     = c("conversion", "impression"),
           banner_status   = NULL, 
           campaign_status = NULL, 
           sort_by         = NULL,
           sort_direction  = c("asc", "desc"),
           auth            = NULL,
           token_path      = getwd(), 
           login           = NULL,
           api_version     = getOption('rmytarget.stat_api_version')
  ) {
    
    start_time <- Sys.time()
    
    # check api version
    api_version <- match.arg(api_version, c('v2', 'v3'))
    
    if (api_version == 'v2') {
      
      # check period
      if ( as.Date(date_from) < (Sys.Date() -  92) ) {
        message("You can get data only by last 92 days.")
        message("Date from convert to ", Sys.Date() -  92)
        date_from <- Sys.Date() -  92
      }
      
      message("Authorize.")
      
      if (is.null(auth)) {
        auth <- myTarAuth(login = login, token_path = token_path)
      }
      
      # if null obj id
      if ( is.null(object_id)) {
        message("Loading object list.")
        # define function
        f <- switch(object_type,
                    "campaigns" = "myTarGetCampaignList",
                    "banners"   = "myTarGetAdList",
                    "users"     = "myTarGetClientList")
        # load obj
        objects <- do.call(f, 
                           list(login = login,
                                token_path = token_path))
        
        object_id <- objects$id
        
        Sys.sleep(1)
      }
      
      # create tables
      # table list
      if ("all" %in% metrics) {
        tables_name <- c("base", "events", "uniques", "video", "viral", "carousel", "ad_offers", "tps", "moat", "romi", "playable")
      } else {
        tables_name <- metrics
      }
      # create table
      for (t in tables_name) {
        assign(t, data.frame())
      } 
      
      # pars of object
      nparts <- ceiling( length(object_id) / 200 )
      objects_parts <- suppressWarnings( split(object_id, 1:nparts) )
      
      message("start-loading------------->")
      # start progressbar
      if ( nparts > 1 ) {
        pb_step <- 1
        pb <- utils::txtProgressBar(pb_step, nparts, style = 3)}
      
      for (p in objects_parts) {
        
        ans <- GET(url = str_interp("https://target.my.com/api/v2/statistics/${object_type}/${stat_type}.json"),
                   query = list(date_from = date_from,
                                date_to   = date_to,
                                id        = paste0(p, collapse = ","),
                                metrics   = paste0(metrics, collapse = ",")),
                   add_headers(Authorization = paste0("Bearer ",auth$access_token)))
        
        temp_all_data <- content(ans, as = "parsed")
        
        if ( ! myTarCheckLimits(temp_all_data) ) stop("Limit error")
        
        if ( !is.null(temp_all_data$error) ) {
          stop( temp_all_data$error$code, ": ", temp_all_data$error$message)
        }
        
        # daily stat
        if ( stat_type == "day" ) {
          # start cycle by each element, object
          for ( i in 1:length(temp_all_data$items) ) {
            
            # get id of current obj
            id <- temp_all_data$items[[i]]$id
            
            # cycle by each rows in obj
            for( r in 1:length(temp_all_data$items[[i]]$rows) ) {
              # get date
              date <- temp_all_data$items[[i]]$rows[[r]]$date
              # get metrics list
              m <- names(temp_all_data$items[[i]]$rows[[r]])[names(temp_all_data$items[[i]]$rows[[r]]) != "date"]
              
              for ( cur_metric in m ) {
                assign(cur_metric, 
                       bind_rows(get(cur_metric), 
                                 bind_cols(c(id = id, 
                                             date = date, 
                                             temp_all_data$items[[i]]$rows[[r]][[cur_metric]] ))))
                
              }
            }
          } 
        } else {
          
          # summary stat
          
          # start cycle by each element, object
          for ( i in 1:length(temp_all_data$items) ) {
            
            # get id of current obj
            id <- temp_all_data$items[[i]]$id
            
            
            # get metrics list
            m <- names(temp_all_data$items[[i]][[2]])
            
            for ( cur_metric in m ) {
              assign(cur_metric, 
                     bind_rows(get(cur_metric), 
                               bind_cols(c(id = id, 
                                           temp_all_data$items[[i]][[2]][[cur_metric]] ))))
              
            }
          }
        }
        #Progresbar step
        if ( nparts > 1 ) {
          pb_step <- pb_step + 1
          utils::setTxtProgressBar(pb, pb_step)}
      }    
      
      if ( exists("pb") ) {
        close(pb)
      }
      
      #Progresbar step
      if ( nparts > 1 ) {
        pb_step <- pb_step + 1
        utils::setTxtProgressBar(pb, pb_step)}
      
      
      if ( exists("pb") ) {
        close(pb)
      }
      
      message("end-loading--------------->")
      message("Create result table.")
      
      # joined all data
      assign("result", get(m[1])) 
      
      for ( j in m ) {
  
        if ( j == m[1] ) next
        
        if ( stat_type == "day" ) {
          
          if ( j == "viral") {
            assign(j, setNames(get(j),  c("id", "date", paste0( "viral_", names(get(j))[ !names(get(j)) %in% c("id", "date") ] ))))
          } 
        } else if ( j == "viral") {
          assign(j, setNames(get(j),  c("id", paste0( "viral_", names(get(j))[ !names(get(j)) %in% "id" ] ))))
        }
        
        # join to result
        if ( stat_type == "day" ) {
          assign("result", left_join(result, get(j), by = c("id", "date")))
        } else {
          assign("result", left_join(result, get(j), by = "id"))
        }
      }
    
    }
    
    if (api_version == 'v3') {

      message("Authorize.")

      if (is.null(auth)) {
        auth <- myTarAuth(login = login, token_path = token_path)
      }

      # if null obj id
      if ( is.null(object_id)) {
        message("Loading object list.")
        # define function
        f <- switch(object_type,
                    "campaigns" = "myTarGetCampaignList",
                    "banners"   = "myTarGetAdList",
                    "users"     = "myTarGetClientList")
        # load obj
        objects <- do.call(f,
                           list(login = login,
                                token_path = token_path))

        object_id <- objects$id

        Sys.sleep(1)
      }

      # match args
      attribution     <- match.arg(attribution)
      banner_status   <- match.arg(banner_status)
      campaign_status <- match.arg(campaign_status)
      sort_direction  <- match.arg(sort_direction)

      if ( !is.null(banner_status) ) {
        banner_status <- match.arg(banner_status, c("all", "active", "blocked", "deleted"))
      }

      if ( !is.null(campaign_status) ) {
        campaign_status <- match.arg(campaign_status, c("all", "active", "blocked", "deleted"))
      }

      fields <- paste0(metrics, collapse = ",")
      stat_type <- "day"

      # pkg id
      if ( is.null(package_id) ) {
        package_id <- NULL
      } else {
        package_id <- paste0(package_id, collapse = ",")
      }

      # result obj
      result <- list()

      message("start-loading------------->")
      ans <- GET(url = str_interp("https://target.my.com/api/v3/statistics/${object_type}/${stat_type}.json"),
                 query = list(date_from       = date_from,
                              date_to         = date_to,
                              id              = paste0(object_id, collapse = ","),
                              fields          = paste0(fields, collapse = ","),
                              limit           = 250,
                              attribution     = attribution,
                              banner_status   = banner_status,
                              campaign_status = campaign_status,
                              package_id      = package_id,
                              sort_by         = sort_by,
                              d               = sort_direction,
                              offset          = 0),
                 add_headers(Authorization = paste0("Bearer ",auth$access_token)))

      # get answer content
      temp_all_data <- content(ans, as = "parsed")
      length(temp_all_data$items)

      # Check limits
      if ( ! myTarCheckLimits(temp_all_data) ) stop("Limit error")

      # check for error
      if ( !is.null(temp_all_data$error) ) {
        stop( temp_all_data$error$code, ": ", temp_all_data$error$message)
      }

      # pagination
      obj_per_call <- 250
      start        <- temp_all_data$offset
      total_obj    <- temp_all_data$count
      r_offset     <- start + obj_per_call

      # main data
      mt_data <- tibble( data = temp_all_data$items ) %>%
        unnest_wider('data') %>%
        unnest_wider('total')

      # metrics group
      metrics_groups <- names(mt_data)[ ! names(mt_data) %in% c("id", "user_id") ]

      # unnest metrics group fields
      for ( metric_group in metrics_groups ) {

        mt_data <- unnest_wider(mt_data, metric_group, names_sep = "_")

      }

      # add to result
      result <- append(result, list(mt_data))

      # paginations
      while (r_offset <= total_obj) {

        ans <- GET(url = str_interp("https://target.my.com/api/v3/statistics/${object_type}/${stat_type}.json"),
                   query = list(date_from       = date_from,
                                date_to         = date_to,
                                id              = paste0(object_id, collapse = ","),
                                fields          = paste0(fields, collapse = ","),
                                limit           = 250,
                                attribution     = attribution,
                                banner_status   = banner_status,
                                campaign_status = campaign_status,
                                package_id      = package_id,
                                sort_by         = sort_by,
                                d               = sort_direction,
                                offset          = r_offset),
                   add_headers(Authorization = paste0("Bearer ",auth$access_token)))

        # get answer content
        temp_all_data <- content(ans, as = "parsed")

        # Check limits
        if ( ! myTarCheckLimits(temp_all_data) ) stop("Limit error")

        # check for error
        if ( !is.null(temp_all_data$error) ) {
          stop( temp_all_data$error$code, ": ", temp_all_data$error$message)
        }

        # paginations
        start        <- temp_all_data$offset
        total_obj    <- temp_all_data$count
        r_offset     <- start + obj_per_call

        # main data
        mt_data <- tibble( data = temp_all_data$items ) %>%
          unnest_wider('data') %>%
          unnest_wider('total')

        # metrics group
        metrics_groups <- names(mt_data)[ ! names(mt_data) %in% c("id", "user_id") ]

        # unnest metrics group fields
        for ( metric_group in metrics_groups ) {

          mt_data <- unnest_wider(mt_data, metric_group, names_sep = "_")

        }

        # add to result
        result <- append(result, list(mt_data))

        # pause between calls
        Sys.sleep(1)
      }


      result <- bind_rows(result)

    }
    
    stop_time <- Sys.time()
    message("Success.")
    message("Total time: ", as.numeric(difftime(stop_time, start_time), units = "secs"), " sec.")
    # return total result
    return(result)
  }
