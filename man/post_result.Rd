% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/handle-event.R
\name{post_result}
\alias{post_result}
\title{Serialise a result and send it to Lambda}
\usage{
post_result(result, request_id, request_type, serialiser = NULL)
}
\arguments{
\item{result}{result to be sent back to Lambda}

\item{request_id}{character request ID, as extracted by
\code{\link{extract_request_id_from_headers}} from the headers of an event.}

\item{request_type}{one of "HTML", "scheduled", or "direct". The content type
may be used in serialising the response to be sent back to Lambda.}

\item{serialiser}{function for serialising the result before sending.
By default, will attempt to serialise the body as JSON, based on the
request type. To send the result as is, pass the \code{identity} function.}
}
\description{
Serialise a result and send it to Lambda
}
\keyword{internal}