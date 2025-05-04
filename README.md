# ZIPPCAlnm
Zero-Inflated Probabilistic PCA framework with logistical normal multinomial distribution (ZIPPCA-LNM)

# Installation
```r
install.packages("devtools")  
devtools::install_github("YanyZeng/ZIPPCAlnm")  
library(ZIPPCAlnm) 
```

# Description
Zero-Inflated Probabilistic PCA framework with logistical normal multinomial distribution (ZIPPCA-LNM), that extends probabilistic PCA from the Gaussian setting to multivariate abundance data, and an empirical Bayes approach was proposed for inferring microbial compositions. An efficient VA algorithm, classification VA, has been developed for fitting this model.

# Usage
```r
ZIPPCAlnm(X, V=NULL, n.factors=2, rank=FALSE,
                      trace = FALSE, maxit = 100, parallel=TRUE,sd.errors=FALSE,level=0.95)
```
* X: count matrix of observations.
* V: vector of the sample covariate.
* n.factors: the rank or number of factors, after dimensional reduction. Defaults to 2.
* rank: FALSE, "BIC" or "CV". Indicating whether the rank or number of factors, is chosen from 1 to 5. Options are "BIC" (Bayesian information criterion), and "CV" (Cross-validation). BIC is recommended. Defaults to FALSE.
* trace: logical, defaults to \code{FALSE}. if \code{TRUE} each current iteration step information will be printed.
* maxit: maximum number of iterations within \code{optim} and \code{constrOptim} function, defaults to 100.
* parallel: logical, if TRUE, use parallel toolbox to accelerate.
* sd.errors: logical, defaults to \code{FALSE}. if \code{TRUE} the sandwich estimators will be calculated.
* level: the confidence level of variational confidence interval. Defaults to 0.95.
