% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/assignments.R
\name{get_assignments}
\alias{get_assignments}
\title{Get all assignments}
\usage{
get_assignments(
  search_by = "",
  qnr_id = "",
  qnr_version = "",
  responsible = "",
  supervisor_id = "",
  show_archive = "",
  order = "",
  server = Sys.getenv("SUSO_SERVER"),
  user = Sys.getenv("SUSO_USER"),
  password = Sys.getenv("SUSO_PASSWORD")
)
}
\arguments{
\item{search_by}{Character. Search for matching text in identifying questions.}

\item{qnr_id}{Questionnaire ID. GUID provided by the server.}

\item{qnr_version}{Questionnaire version. Version number provided by the server.}

\item{responsible}{Character. Either user ID (GUID) or user name.}

\item{supervisor_id}{Character. User ID (GUID) of supervisor.}

\item{show_archive}{Include archived assignments. Values: c("true", "false")}

\item{order}{Possible values are Id, ResponsibleName, InterviewsCount, Quantity, UpdatedAtUtc, CreatedAtUtc Followed by ordering direction "ASC" or "DESC"}

\item{server}{Full server web address (e.g., \code{https://demo.mysurvey.solutions}, \code{https://my.domain})}

\item{user}{User name}

\item{password}{Password}
}
\value{
Data frame of all assignments that meet search criteria.
}
\description{
Get all assignments for query parameters.
}
