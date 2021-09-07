\name{myTarGetGoalList}
\alias{myTarGetGoalList}
\title{Get goals list.}
\description{Get data frame with 'MyTarget' account goals}
\usage{
myTarGetGoalList(
    auth = NULL, 
    login = NULL, 
		token_path = getwd()
)
}

\arguments{
  \item{auth}{MyTarget Autherization R object.}
  \item{login}{Your login, or client name in MyTarget account}
  \item{token_path}{Path to directory where you save credential data}
}
\value{
Data frame with goals list
}
\author{
Alexey Seleznev
}
\seealso{
\href{https://target.my.com/doc/api/ru/resource/Goals}{MyTarget API Documentation}
}
\examples{
\dontrun{
myGoals <- myTarGetGoalList(login = "my_test_client")
}
}

