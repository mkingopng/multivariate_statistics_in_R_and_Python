---
title: "Estimation of vector mean and of variance matrices: point estimates"
output: html_notebook
---

# Estimation of the mean vector and covariance matrix of multivariate normal distribution
In the previous topic, we have derived the multivariate normal distribution and 
its basic properties. In order to make use of them, we must now estimate this 
distribution from observed data. This topic derives the estimators for the 
parameters of this distribution and some properties of these estimators.

# Maximum Likelihood Estimation
Optional viewing: Maximum Likelihood estimation - An introduction

# Likelihood function
Suppose we have observed $p$ independent realisations of $p$-dimensional random 
vectors from $N_p(\mu, \Sigma)$. Suppose for simplicity that $\Sigma$ is 
non-singular. The data matrix has the form:

$$$$

The goal to estimate the unknown mean vector and the covariance matrix of the 
multivariate normal distribution by the Maximum Likelihood Estimation (MLE) 
method.

Based on our knowledge from the previous topic we can write down the 
*likelihood function*

$$$$

(Note that we have substituted the observations above and consider $L$ as a 
function of the unknown parameters $\mu \sigma$ only.) Correspondingly, we get 
the log-likelihood function in the form

$$$$

It is well known that maximising either (1.9)(1.9)(1.9) or (1.10)(1.10)(1.10) 
will give the same solution for the MLE.

We start deriving the MLE by trying to maximise (1.10)(1.10)(1.10). To this 
end, first note that by utilising properties of traces from slide "Vectors and 
matrices", we can transform:

$$$$

thus

# Maximum Likelihood estimators
The MLE are the ones that maximise (1.11)(1.11)(1.11). Looking at (1.11)(1.11)
(1.11) we realise that (since $\Sigma$ is non-negative definite) the minimal 
value for $\dfrac{1}{2}n (\bar{x} - \mu)^T \Sum^{-1}(\bar{x} - \mu)$ is zero 
and is attained when $\mu = \bar{x}$.

Finding the MLE for $\Sigma$ is more challenging. We will not be deriving it in 
this class, since it doesn't have much bearing on applications, but we will 
state the following intermediate result that will prove useful later: 

**Theorem 1.2** (Anderson’s lemma). If $$ is symmetric positive definite, then 
the maximum of the function $$ (defined over the set of symmetric positive 
definite matrices $$ exists, occurs at $$ and has the maximal value of $$ 

This is useful because the parts of the log-likelihood function in (1.11)(1.11)
(1.11) that depend on Σ\SigmaΣ have the form required by Theorem (1.2) with $$ 
and $$. From there, we can show (again, don't worry about the details) the 
following: 

# Distributions of MLE of mean vector and covariance matrix of multivariate normal distribution

# Distributions of MLE of mean vector and covariance matrix of multivariate normal distibutions. Detailed Derivations

# moments and transformation formulas

# check your understanding

# demonstration - matrices

# challenge - matrices

