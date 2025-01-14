% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/interviews.R
\name{approve_interview_as_hq}
\alias{approve_interview_as_hq}
\title{Approve an interview as headquarters}
\usage{
approve_interview_as_hq(
  interview_id,
  comment = "",
  verbose = FALSE,
  server = Sys.getenv("SUSO_SERVER"),
  user = Sys.getenv("SUSO_USER"),
  password = Sys.getenv("SUSO_PASSWORD")
)
}
\arguments{
\item{interview_id}{Interview ID. GUID from server or \code{interview__id} from exported data}

\item{comment}{Comment to post upon approval.}

\item{verbose}{Logical. If \code{verbose == TRUE}, return logical outcome and print message. Otherwise, be silent.}

\item{server}{Full server web address (e.g., \code{https://demo.mysurvey.solutions}, \code{https://my.domain})}

\item{user}{API user name}

\item{password}{API password}
}
\value{
If \code{verbose = FALSE}, no return value. If \code{verbose = TRUE}, return logical outcome.
}
\description{
Has server-side side-effect of approving a single interview as headquarters. If \code{verbose = TRUE}, return logical outcome and print message.
}
\details{
Wrapper for \code{PATCH /api/v1/interviews/{id}/hqapprove} endpoint
}
