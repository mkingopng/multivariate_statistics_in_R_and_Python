# Topic 4: Confident intervals and hypothesis tests for the mean vector
Hypothesis tests for the multivariate normal mean

In this topic, we will begin to apply the multivariate normal distribution to 
answer questions based on the population mean. Here, we will consider 
confidence intervals and hypothesis tests about $\mu$, as well as how to 
compare means of several populations.

## Hotelling's $T^2$
Suppose again that, Like in Topic 3 (slide "Estimation of the Mean Vector and 
Covariance Matrix of Multivariate Normal Distribution"), we have observed $n$ 
independent realisations of $p$-dimensional random vectors from $N_p (\mu, \Sigma)$. 
Suppose for simplicity that $\Sigma$ is non-singular. The data matrix has the 
form

Based on our knowledge from Topic 3 of this week (slide "Distributions of MLE 
of mean vector and covariance matrix of multivariate normal distribution"), we 
can claim that $$ and $$.

Consequently, any linear combination $$ and the quadratic form  Further, we 
have shown that  and  are independently distributed and hence

i.e. follows the ttt distribution with $n-1$ degrees of freedom. This result 
has useful applications in testing for contrasts.

Indeed, if we would like to test , we note that under $$, $T$ becomes simply

it does not involve the unknown μ\bm{\mu}μ and can be used as a test-statistic 
whose distribution under $$ is known. If $$ we should reject $$ in favour of $$.

The formulation of the test for other (one-sided) alternatives is left for you 
as an exercise.

More often we are interested in testing the mean vector of a multivariate 
normal. First consider the case of known covariance matrix $\Sigma$ (variance 
σ2\sigma^{2}σ2 in the univariate case). The standard univariate ($p=1$) test 
for this purpose is the following: to test versus  at level of significance , 
we look at $$

 and reject  if  exceeds the upper  point of the standard normal distribution. 
 Checking if  is large enough is equivalent to checking if  is large enough. 
 We can now easily generalise the above test statistic in a natural way for 
 the multivariate ($p>1$) case: calculate $$ and reject the null hypothesis of 
 $$ when $$ is large enough. Similarly to the proof of Property 5 of the 
 multivariate normal distribution (Topic 2, slide "Properties of multivariate 
 normal") and by using Theorem 1.4 of Topic 3 (slide "Distributions of MLE of 
 mean vector and covariance matrix of multivariate normal distribution"), you 
 can convince yourself that $$ under the null hypothesis. Hence, tables of the 
 $$ distribution will suffice to perform the above test in the multivariate 
 case.

Now let us turn to the (practically more relevant) case of unknown covariance 
matrix $\Sigma$. The standard univariate ($p=1$) test for this purpose is the 
$t$-test. Let us recall it: to test H0 versus H1 at level of significance 
$\alpha$, we look at

and reject  exceeds the upper  point of the $t$-distribution with $n−1$ degrees 
of freedom. We note that checking if $$ is large enough is equivalent to 
checking if  is large enough. Of course, under , the statistic is 
$F$-distributed:  which means that  would be rejected at level  when $$. We 
can now easily generalise the above test statistic in a natural way for the 
multivariate ($p>1$) case: 

Definition 1.3 .  The statistic 

where ,  is named after Harold Hotelling.
Sampling distribution of 

Obviously, the test procedure based on Hotelling's statistic will reject the 
null hypothesis H0 if the value of  is sufficiently high. It turns out we do 
not need special tables for the distribution of T2T^{2}T2 under the null 
hypothesis because of the following basic result (that represents a true 
generalisation of the univariate ($p=1$) case:

Theorem 1.5.  Under the null hypothesis H0, Hotelling's  is distributed as 
 where  denotes the $F$-distribution with $p$ and $n-p$ degrees of freedom.

# Noncentral Wishart
It is possible to extend the definition of the Wishart distribution (see 
Definition 1.2) by allowing the random vectors  there to be independent with 
(instead of just having all ). One arrives at the noncentral Wishart 
distribution with parameters  in that way (denoted also as . Here  is called a 
noncentrality parameter. When all columns of  are zero, this is the usual 
(central) Wishart distribution. Theorem 1.5 can be extended to derive the 
distribution of the  statistic under alternatives, i.e. the distribution of 
for . This distribution turns out to be related to noncentral F-distribution. 
It is helpful in studying power of the test of H0 versus H1. 

This section is continued on the next slide. 

# Hypothesis tests for the multivariate normal mean continued
## $T^2$ as a likelihood ratio statistic
It is worth mentioning that Hotelling's $T^2$ that we introduced by analogy 
with the univariate squared $t$ statistic can in fact also be derived as the 
likelihood ratio test statistic for testing $$ versus H1. This safeguards the 
asymptotic optimality of the test suggested above. To see this, first recall 
the likelihood function (1.9)(1.9)(1.9) 

Its unconstrained maximisation gives as a maximum value: 

On the other hand, under 

Since , on applying Anderson's lemma (see Theorem 1.2) we find that maximum of  (whence also of) is obtained when  and the maximal value is

Hence the likelihood ratio is:

The equivalent statistic  is called Wilks' lambda. Small values of Wilks' 
lambda lead to rejecting H0

## Wilks' lambda and $T^2$
The following theorem shows the relation between Wilks' lambda and $T^2$

Theorem 1.6.  The likelihood ratio test is equivalent to the test based on 
$T^2$ since  holds.

## Numerical calculation of $T^2$
Hence  is rejected for small values of  or equivalently, for large values of 
$T^2$. The critical values for $T^2$ are determined from Theorem 1.5. Relation 
in Theorem 1.6 can be used to calculate $T^2$ from thus avoiding the need to 
invert the matrix  when calculating $T^2$

## Asymptotic distribution of $T^2$
Since  is a consistent estimator of , the limiting distribution of  will 
coincide with the one of  which, as we know already, is . This coincides with 
a general claim of asymptotic theory which states that  is asymptotically 
distributed as . Indeed:

(by using the fact that $$

# Confidence regions for the mean vector and for its components
## Confidence region for the mean vector
For a given confidence level (1−α)(1-\alpha)(1−α) it can be constructed in the form 

where  is the upper  percentage point of the $F$ distribution with $$ df. This 
confidence region has the form of an ellipsoid in $$ centred 
at $$. The axes of this confidence ellipsoid are directed along the 
eigenvectors $$ of the matrix $$ The half-lengths of the axes are given by the 
expression $$

$$ being the corresponding eigenvalues, i.e. 


For illustration, see numerical example 5.3, pages 221–223, Johnson and Wichern.
Simultaneous confidence statements

For a given confidence level $$ the confidence ellipsoids in the section above 
correctly reflect the joint (multivariate) knowledge about plausible values of 
$$ but nevertheless one is often interested in confidence intervals for means 
of each individual component. We would like to formulate these statements in 
such a form that all the separate confidence statements should hold 
simultaneously with a prespecified probability. This is why we are speaking 
about simultaneous confidence intervals.

First, note that if the vector  then for any  and, hence, for any fixed 
 we can construct an  confidence interval of  in the following simple way:

By taking  etc. we obtain from (1.16)(1.16)(1.16) the usual confidence interval 
for each separate component of the mean. Note however that the confidence level 
for all these statements taken together is not . To make it  for all possible 
choices simultaneously we need to take a larger constant than on the right hand 
side of the inequality

(or equivalently .
Simultaneous confidence ellipsoid

Theorem 1.7.  Simultaneously for all  the interval

will contain  with a probability at least . 

For Illustration, see example 5.4, p. 226 in Johnson and Wichern.
Bonferroni Method

The simultaneous confidence intervals when applied for the vectors  etc. are 
much more reliable at a given confidence level than the one-at-a-time 
intervals. Note that the former also utilise the covariance structure of all 
$p$ variables in their construction. However, sometimes we can do better in 
cases where one is interested in a small number of individual confidence 
statements.

In this latter case, the simultaneous confidence intervals may give too large 
a region and the Bonferroni method may prove more efficient instead. The idea 
of the Bonferroni approach is based on a simple probabilistic inequality. 
Assume that simultaneous confidence statements about mmm linear combinations 
 are required. If  denotes the $i^[th]$ confidence statement and then

Hence, if we choose (that is, if calculate each statement at confidence level  
instead of  then the probability of any statement being false will not exceed 

# Comparison of two or more mean vectors

Finally, let us note that comparison of the mean vectors of two or more than 
two different multivariate populations when there are independent observations 
from each of the populations is an important, practically relevant problem. For 
the purposes of this section, suppose that we observe two samples, 
, with means  respectively and variances and  respectively. Typically, we wish 
to test H0:

Multivariate ANOVA for comparing more than two populations is discussed in 
Topic 2 of Week 3. 

Reducing to a single population

As with the univariate $t$-test, under some scenarios the test of a difference 
between two populations in fact reduces to a one-sample test. For example, if 
the samples are paired and $$, we may proceed analogously to the paired 
$t$-test: we take $$ for $$ and proceed as if with a 1-sample $T^2$ test:

where  and  are the sample mean and variance of , respectively, assuming  are 
normally distributed. (It is important to note that any diagnostics for this 
test should be performed on the differences, not on the original values.)

We can also formulate this is in a "multivariate" form: let the contrast matrix  be 

Then, we can express  and the test as  It is easy to show that the test 
statistic reduces to (1.17)(1.17)(1.17). 

CCC can have more complex forms. For example, in a repeated measures design, 
we may measure the results of a series of ppp treatment outcomes on each 
sampling unit. If we then collect each individual $i$'s measurements into a 
vector $$ we may test whether all outcomes are the same by forming

and testing H0:. It is easy to show that  holds if and only if all elements of are equal.
The two-sample -test

We now turn to the scenario where X\bm{X}X and Y\bm{Y}Y are, in fact, 
independent samples. As with the univariate test, we must decide whether we are 
prepared to assume that  in the population and therefore use the pooled test. 
If so—and necessarily if the sample sizes are small—we evaluate

Since 

And, since  we write

We would thus reject H0 falls above the $F$ critical value in (1.18)(1.18)
(1.18), construct a confidence region based on

and simultaneous contrast confidence intervals

If we are not prepared to make the pooling assumption, our test statistic is instead

Even for modest sample sizes, under multivariate normality, the distribution of 
this  is reasonably well approximated by , where

where  and analogously for .

The confidence regions are then produced by

and simultaneous contrast confidence intervals

Check your understanding

Complete the below exercises to check your understanding of concepts presented so far. 

Suppose are independent random vectors with sample mean vector and sample 
covariance matrix . We wish to test the hypothesis

where  are the elements of . 

a) Determine a  so that  may 
be written equivalently as  where  
is a  vector of ones. 

b) Make an appropriate transformation of the vectors  and hence find the 
rejection region of a size test of  in terms of  and . 

A sample of 50 vector observations , each containing three components, is 
drawn from a normal distribution having covariance matrix

The components of the sample mean are 0.8, 1.1 and 0.6. Can you reject the null 
hypothesis of zero distribution mean against a general alternative?

Evaluate Hotelling’s statistic  for testing hypothesis 
using the data matrix
Test the hypothesis at level. 
What conclusion is reached?

