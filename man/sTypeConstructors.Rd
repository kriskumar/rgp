% Generated by roxygen2 (4.0.1): do not edit by hand
\docType{data}
\name{st}
\alias{\%->\%}
\alias{sObject}
\alias{st}
\title{Type constructors for types in the Rsymbolic type system}
\format{\preformatted{List of 2
 $ base  : chr "sObject"
 $ string: chr "sObject"
 - attr(*, "class")= chr [1:3] "sBaseType" "sType" "character"
}}
\usage{
st(baseTypeName)

domainTypes \%->\% rangeType

sObject
}
\arguments{
\item{baseTypeName}{The name of the base sType to create.}

\item{domainTypes}{The \code{domain} sType of a function sType.}

\item{rangeType}{The \code{range} sType of a function sType.}
}
\value{
The created sType.
}
\description{
These functions create types for the Rsymbolic type system, called \emph{sTypes}
from here on. These functions are used mostly in literal expressions denoting sTypes.
\code{st} creates a \emph{base sType} from a string. A base sType is a type without
any further structure. Example include \code{st("numeric")}, \code{st("character")}
or \code{st("logical")}.
\code{\%->\%} creates a \emph{function sType}, i.e. the type of function, from a
vector of argument sTypes and a result sType. A function sType has \code{domain}
and \code{range} containing its argument and result types.
Every sType has a \code{string} field containing a unambiguous string representation
that can serve as a hash table key.
STypes can be checked for equality via \code{\link{identical}}.
\code{sObject} is the root of the sType hierarchy, i.e. the most general type.
}
\examples{
st("numeric")
list(st("numeric"), st("numeric")) \\\%->\\\% st("logical")
is.sType(st("logical"))
}
\seealso{
sTypeInference
}
\keyword{datasets}

