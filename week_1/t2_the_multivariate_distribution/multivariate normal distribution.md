title: "ZZSC5855 - Multivariate Normal Distribution"
author: "Michael Kingston"
- "Department of Statistics"
- "University of New South Wales"
output:
  html_notebook: default
  pdf_document: default

# the multivariate normal distribution
This course will make heavy use of multivariate normal distribution. This 
distribution generalises the familiar normal distribution to multiple 
dimensions and provides a convenient way to represent many variables and their 
(pairwise) dependence on each other.

The multivariate normal (MVN) density is a generalisation of the univariate 
normal for  dimensions. Looking at the term  in the exponent of the well known 
formula

for the univariate density function, a natural way to generalise this term in 
higher dimensions is to replace it by

is the covariance matrix. Note that on the diagonals of Σ{\Sigma}Σ we get the 
variances of each of the ppp random variables whereas  are the covariances 
between the $$ and $$ random variables. Sometimes, we will also denote .

Of course, the above replacement would only make sense if $\Sigma$ were 
positive definite. In general, however, we can only claim that $\Sigma$ is 
(as any covariance matrix) non-negative definite.

If $$ were positive definite, then the density of the random vector $$ can be 
written as

It can be directly checked that the random vector $$ and $$

Since the density is uniquely defined by the mean vector and the covariance 
matrix we will denote it by .

Notably, while the multivariate normal distribution does not have a density if 
$\Sigma$ is singular (i.e., the variables are linearly dependent), it still has 
a valid expectation, variance, etc..

# properties of the multivariate normal
The following properties of multivariate normal are useful in the rest of the 
course.

**Property 1** If $$ is a diagonal matrix then the $p$ components of  are 
independent.

The above property can be paraphrased as "for a multivariate normal, if its 
components are uncorrelated they are also independent". On the other hand, it 
is well known that always, i.e. not only for normal from the fact that certain 
components are independent we can conclude that they are also uncorrelated. 
Therefore, for the multivariate normal distribution we can conclude that its 
components are independent if and only if they are uncorrelated!

**Property 2**  If  and  is an arbitrary matrix of real numbers then

Note also that if it happens that the rank of $$ is full and if $$ then the 
rank of $$ is also full, i.e. the distribution of $$ would not be degenerate in 
this case.

**Property 3**  (This is a finer version of Property 1). Assume the vector  is 
divided into subvectors  and according to this subdivision the vector means are 
$$ and the covariance matrix  has been subdivided into $$. Then the vectors $$ 
and $$ are independent if $$.

**Property 4** Let the vector  be divided into subvectors  and according to 
this subdivision the vector means are  and the covariance matrix  has been 
subdivided into . Assume for simplicity that the rank of  is full. Then the 
conditional density of  given that  is

**Example 1.1**: As an immediate consequence of Property 4 we see that if $$ then 
for a two-dimensional normal vector $$, its conditional density  is $$.

Optional Exercise: Try to derive the above result by direct calculations 
starting from the joint density , going over to the marginal  by integration 
and finally getting .

**Property 5**: If $$ is nonsingular then  where  denotes the chi-square 
distribution with ppp degrees of freedom.

**Remark 1.1** This stems from the fact that the vector  i.e. it has $p$ 
independent standard normal components, where  is defined either via the 
spectral decomposition (0.8) or the Cholesky Decomposition on slide "Numerical 
stability and Cholesky decomposition" Then $$

according to the definition of $$ as a distribution of the sum of squares of $p$ 
independent standard normals. However, this multivariate version of 
standardising the normal distribution is useful in other situations, such as 
multivariate ANOVA and regression diagnostics.

Finally, one more interpretation of the result in Property 4 will be given. 
Assume we want, as is a typical situation in statistics, to predict a random 
variable $Y$ that is correlated with some ppp random variables (predictors) . 
Trying to find the best predictor of YYY we would like to minimise the Mean 
Squared Error (MSE), the expected value  over all possible choices of the 
function $g$ such that . A little careful work and use of basic properties of 
conditional expectations, i.e., leads us to the conclusion that the optimal 
solution to the above minimisation problem is .

This optimal solution is also called the regression function. Thus given a 
particular realisation  of the random vector X\bm{X}X the regression function 
is just the conditional expected value of $Y$ given .

In general, the conditional expected value may be a complicated nonlinear 
function of the predictors. However, if we assume in addition that the joint 
$$-dimensional distribution of $$ and $$ is normal then by applying Property 4 
we see that given the realisation $$ of $$, the best prediction of the $$ 
value is given by $$ where $$ is the covariance matrix of the vector $$ is the 
vector of Covariances of $Y$ with $$

Indeed, we know that when the joint $$-dimensional distribution of $Y$ and 
$$ is normal the regression function is given by $$

By introducing the notation  we can write this as $$.

That is, in case of normality, the optimal predictor of $Y$ in the least 
squares sense turns out to be a very simple linear function of the predictors. 
The vector  is the vector of the regression coefficients. Substituting the 
optimal values we get the minimal value of the sum of squares which is equal to $$.

# tests for multivariate normality
We have seen that the assumption of multivariate normality may bring essential 
simplifications in analysing data. But applying inference methods based on the 
multivariate normality assumption in cases where it is grossly violated may 
introduce serious defects in the quality of the analysis. It is therefore 
important to be able to check the multivariate normality assumption. Based on 
the properties of normal distributions discussed in this topic, we know that 
all linear combinations of normal variables are normal and the contours of the 
multivariate normal density are ellipsoids.

Therefore we can (to some extent) check the multivariate normality hypothesis by:
- checking if the marginal distributions of each component appear to be normal 
(by using Q–Q plots, for example);
- checking if the scatterplots of pairs of observations give the elliptical 
appearance expected from normal populations;
- are there any outlying observations that should be checked for accuracy.

All this can be done by applying univariate techniques and by drawing 
scatterplots, which are well developed in R. To some extent, however, there is 
a price to be paid for concentrating on univariate and bivariate examinations 
of normality.

There is a need to construct a "good" overall test of multivariate normality. 
One of the simple and tractable ways to verify the multivariate normality 
assumption is by using tests based on Mardia's multivariate skewness and 
kurtosis measures. For any general multivariate distribution we define these 
respectively as

provided that  is independent of  but has the same distribution and

(if the expectations in (1.6) and (1.7) exist). For the $$ distribution: $$ and $$.

(Note that when $p=1$, the quantity  is the square of the skewness coefficient  
whereas coincides with the kurtosis coefficient $$

For a sample of size $n$ consistent estimates of $$ and $$ can be obtained as $$

where $$. Notice that for $$, we take advantage of our sample being independent and 
use observations  for $$  as the $$ values for $$.

Both quantities $$ and $$ are non-negative and for multivariate data, one would 
expect them to be around zero and $$, respectively. Both quantities can be 
utilised to detect departures from multivariate normality.

Mardia has shown that asymptotically, $$ is standard normal. Thus we can use  
and $$ to test the null hypothesis of multivariate normality. If neither 
hypothesis is rejected, the multivariate normality assumption is in reasonable 
agreement with the data. It also has been observed that Mardia's multivariate 
kurtosis can be used as a measure to detect outliers from the data that are 
supposedly distributed as multivariate normal. Mardia's multivariate kurtosis 
can also be used to detect outliers.

**Remark 1.2** (Over-reliance on hypothesis tests). Shapiro–Wilk, Mardia, and 
other distribution tests have, as their null hypothesis, that the true 
population distribution is (multivariate) normal. This means that if the 
population distribution deviates from normality even a little, then as the 
sample size increases, the power of the test (the probability of rejecting the 
null hypothesis of normality) approaches 1.

At the same time, as the sample size increases, the Central Limit Theorem tells 
us that many statistics, including sample means and (much more slowly) sample 
variances and covariances, approach normality—and multivariate statistics 
generally approach multivariate normality. This means that regardless of the 
underlying distribution, the statistical procedures depending on the normality 
assumption become valid—even as the chances that a statistical hypothesis test 
will detect what non-normality there is approaches 1.

This means that we must not rely on hypothesis testing blindly but consider the 
situation on a case-by-case basis, particularly when dealing with large 
datasets. For a decent sample size, the “symmetric, bell-shaped” heuristic may 
indicate an adequate distribution, even if a hypothesis test reports a small 
$p$-value.

# Check your understanding
Complete the below exercises to check your understanding of concepts presented so far.

1. Let  and  denote i.i.d.  random variables.

a) Show that the random variables  are independent, and find their marginal densities.

b) Find

2. Let  where

a) For $$ find the distribution of $$ and find the correlation between the two components of $$.

b) Find the conditional distribution of $$ given $$.

Solutions to these exercises will be provided in the ‘Exercises’ discussion forum.