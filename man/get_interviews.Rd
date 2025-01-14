% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/interviews.R
\name{get_interviews}
\alias{get_interviews}
\title{Get interviews}
\usage{
get_interviews(
  workspace = "primary",
  chunk_size = 100,
  server = Sys.getenv("SUSO_SERVER"),
  user = Sys.getenv("SUSO_USER"),
  password = Sys.getenv("SUSO_PASSWORD")
)
}
\arguments{
\item{workspace}{Character. Name of the workspace whose interviews to get.}

\item{chunk_size}{Numeric. Number of records to take in one request.}

\item{server}{Character. Full server web address (e.g., \code{https://demo.mysurvey.solutions}, \code{https://my.domain})}

\item{user}{Charater. API or admin user name for user that access to the workspace.}

\item{password}{API or admin password}
}
\description{
Get list of interviews and their attributes
}
\details{
GraphQL implementation of deprecated REST \verb{GET ​/api​/v1​/interviews​/\{id\}} endpoint.
}
