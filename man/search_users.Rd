% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/search.R
\name{search_users}
\alias{search_users}
\title{search_users}
\usage{
search_users(q, n = 100, ...)
}
\arguments{
\item{q}{Query to be searched, used in filtering relevant tweets
to return from Twitter's REST API. Should be a character
string not to exceed 500 characters maximum. Spaces are assumed
to function like boolean "AND" operators. To search for tweets
including one of multiple possible terms, separate search terms
with spaces and the word "OR". For example, the search
\code{query = "data science"} searches for tweets using both
"data" and "science" though the words can appear anywhere and
in any order in the tweet. However, when OR is added between
search terms, \code{query = "data OR science"}, Twitter's REST
API should return any tweet that includes either "data" or
"science" appearing in the tweets. At this time, Twitter's users/search
API does not allow complex searches or queries targetting exact phrases
as is allowed by \code{search_tweets}.}

\item{n}{Numeric, specifying the total number of desired users to
return. Defaults to 100. Maximum number of users returned from
a single search is 1,000.}

\item{...}{Other arguments passed along to \code{\link{search_users_call}}}
}
\value{
Data frame of users returned by query.
}
\description{
Returns data frame of users data using a provided
  search query.
}
\examples{
\dontrun{
# search for 1000 tweets mentioning Hillary Clinton
pc <- search_users(q = "political communication", n = 1000)

# data frame where each observation (row) is a different user
pc

# tweets data also retrieved. can access it via tweets_data()
users_data(hrc)
}
}
\seealso{
Other users: \code{\link{lookup_users}},
  \code{\link{search_users_call}}, \code{\link{users_data}}
}
