.onLoad <- function(libname, pkgname) {
  op <- options()
  op.rmytarget <- list(rmytarget.url                 = "https://target.my.com/",
                       rmytarget.client_id           = "WsHGWRVKSAog2lkf",
                       rmytarget.client_secret       = "jEUXvwPUZwuwWjaeMhRVk9KOIXJCbhiRgbUydmTy7T9x8wF4Uu8H1DeGbAc3vauhXFimzu1qTtAJ1rXJ0YGEN8iEqQHoW7SueiILLO3aaCwnKYIHRSkU76DRGEmNWWhYPUzy6bPrePb3VP8xYHMS3pruWr24csup7hke56UFtbNgaE1Omc3Kkkwjf1cvKrqddJ432hofWZ2PDOK8XXkqdx0Y8lFL",
                       rmytarget.code_grant_auth     = FALSE)
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
