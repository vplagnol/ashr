% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lik.R
\name{lik_binom}
\alias{lik_binom}
\title{Likelihood object for Binomial error distribution}
\usage{
lik_binom(y, n, link = c("identity", "logit"))
}
\arguments{
\item{y}{Binomial observations}

\item{n}{Binomial number of trials}

\item{link}{Link function. The "identity" link directly puts unimodal prior on Binomial success
probabilities p, and "logit" link puts unimodal prior on logit(p).}
}
\description{
Creates a likelihood object for ash for use with Binomial error distribution
}
\details{
Suppose we have Binomial observations \code{y} where \eqn{y_i\sim Bin(n_i,p_i)}. 
   We either put an unimodal prior g on the success probabilities \eqn{p_i\sim g} (by specifying 
   \code{link="identity"}) or on the logit success probabilities \eqn{logit(p_i)\sim g} 
   (by specifying \code{link="logit"}). Either way, ASH with this Binomial likelihood function 
   will compute the posterior mean of the success probabilities \eqn{p_i}.
}
\examples{
   p = rbeta(100,2,2) # prior mode: 0.5
   n = rpois(100,10)
   y = rbinom(100,n,p) # simulate Binomial observations
   ash(rep(0,length(y)),1,lik=lik_binom(y,n))
}
