.onLoad <- function(libname, pkgname) {
  op <- options()
  op.rmytarget <- list(rmytarget.url                 = "https://target.my.com/",
                       rmytarget.client_id           = "hiM3gdQP04UE8DFR",
                       rmytarget.client_secret       = "Jh5TZlHGKA9GarW8jYzOYsgXnlbnMtSRODkRmHhyFdfpRsG4WbUDK0bFwVm2tK4YJHCtqdyfAYZJEnwHcag9u2jsOXpRkhoGudloum1ueOsZ1KzNAvCYyExZU0HUrZK7TH4VZgx9mh6ZvJS5mRMkcwCTWLOoNWGDwKCFsYmIEwwybgj8HFmWjRdP8bOkGed6kpMPPoo7xqtVsq0U9OyBfbNEAEKHwqWXm4G",
                       rmytarget.code_grant_auth     = TRUE)
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
         "Packages: https://selesnow.github.io \n",
		 "Rdocumentation: https://www.rdocumentation.org/collaborators/name/Alexey%20Seleznev \n",
         "\n",
         "Type ?rmytarget for the main documentation.\n",
         "Web page for main documentation: https://selesnow.github.io/rmytarget",
         "The github page is: https://github.com/selesnow/rmytarget/\n",
         "\n",
         "Suggestions and bug-reports can be submitted at: https://github.com/selesnow/rmytarget/issues\n",
         "Or contact: <selesnow@gmail.com>\n",
         "\n",
         "\tTo suppress this message use:  ", "suppressPackageStartupMessages(library(rmytarget))\n",
         "---------------------\n"
  )
}
