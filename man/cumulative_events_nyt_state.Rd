% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/nyt.R
\name{cumulative_events_nyt_state}
\alias{cumulative_events_nyt_state}
\title{create cumulative_events instance for state data from NYT}
\usage{
cumulative_events_nyt_state(
  src,
  eventtype = "confirmed",
  statename = "Massachusetts"
)
}
\arguments{
\item{src}{a tibble}

\item{eventtype}{character(1) 'confirmed' or 'deaths'}

\item{statename}{character(1) state name}
}
\description{
create cumulative_events instance for state data from NYT
}
\examples{
nyt = nytimes_state_data()
mass = cumulative_events_nyt_state(nyt, eventtype = "confirmed",
   statename = "Massachusetts")
mass
imass = form_incident_events(trim_from(mass, "2020-03-01"))
plot(imass)
}
