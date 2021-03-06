% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/distribution.R
\name{countrysubref}
\alias{countrysubref}
\title{countrysubref}
\usage{
countrysubref(species_list = NULL, fields = NULL, query = NULL,
  limit = 200, server = getOption("FISHBASE_API", FISHBASE_API), ...)
}
\arguments{
\item{species_list}{A vector of scientific names (each element as "genus species"). If empty, the table will be loaded up to the limit. This makes it possible to load an entire table without knowledge of the species in the table, thus avoiding uneccesary API calls.}

\item{fields}{a character vector specifying which fields (columns) should be returned. By default,
all available columns recognized by the parser are returned. This option can be used to limit the amount
of data transfered over the network if only certain columns are needed.}

\item{query}{a named list specifying specific subsets of fields.}

\item{limit}{The maximum number of matches from a single API call (e.g. per species). Function
will warn if this needs to be increased, otherwise can be left as is.}

\item{server}{base URL to the FishBase API (by default). For SeaLifeBase, use https://fishbase.ropensci.org/sealifebase}

\item{...}{additional arguments to httr::GET}
}
\description{
return a table of countrysubref for the requested species
}
\examples{
\dontrun{
countrysubref(species_list(Genus='Labroides'))
}
}
