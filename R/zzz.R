.onLoad <- function(libname, pkgname) {
  op <- options()
  op.rmytarget <- list(rmytarget.url                 = "https://target.my.com/",
                       rmytarget.client_id           = "m1W1ofkghcelGZGk",
                       rmytarget.client_secret       = "YJMLYLFUBIW52e4qW7y39XqZebYWbzNIN8MnMo9BXA1iRhrRvX1sPGfexO4NvT97H1q1tdlegRrHyaCJHMlP1ZtKTwLanBtTvlLQVYoxa1R0GSKcUKG3Lm4eYJFI8mtHga75qn7xE4JStf9Xrwh0AhQFnxX0tQMU19fIbpTsFjwfvvgFEQ1FlmbE67Xksx6n1oz5O5RJsAZMepvgNVIEfm6V0vr2sMdlCh00B6XZdubtqXHAPM",
                       rmytarget.default_auth_schema = "Authorization Code Grant")
  toset <- !(names(op.rmytarget) %in% names(op))
  if (any(toset)) options(op.rmytarget[toset])
  
  invisible()
}


.onAttach <- function(lib, pkg,...){
  packageStartupMessage(ryandexdirectWelcomeMessage())
}

#
#

ryandexdirectWelcomeMessage <- function(){
  # library(utils)
  
  paste0("\n",
         "---------------------\n",
         "Welcome to rmytarget version ", utils::packageDescription("rmytarget")$Version, "\n",
         "\n",
         "Author:   Alexey Seleznev (Head of analytics dept at Netpeak).\n",
         "Email:    selesnow@gmail.com\n",
         "Blog:     https://alexeyseleznev.wordpress.com \n",
         "Facebook: https://facebook.com/selesnown \n",
         "Linkedin: https://www.linkedin.com/in/selesnow \n",
         "\n",
         "Type ?rmytarget for the main documentation.\n",
         "The github page is: https://github.com/selesnow/rmytarget/\n",
         "\n",
         "Suggestions and bug-reports can be submitted at: https://github.com/selesnow/rmytarget/issues\n",
         "Or contact: <selesnow@gmail.com>\n",
         "\n",
         "\tTo suppress this message use:  ", "suppressPackageStartupMessages(library(rmytarget))\n",
         "---------------------\n"
  )
}
