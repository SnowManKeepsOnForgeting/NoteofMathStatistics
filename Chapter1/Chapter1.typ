#import "@preview/physica:0.9.3": *
#import "@preview/i-figured:0.2.4"

#set heading(numbering: "1.1")
#show math.equation: i-figured.show-equation.with(level: 2)
#show heading: i-figured.reset-counters.with(level: 2)
#let dcases(..args) = math.cases(..args.pos().map(math.display))
#set text(font: "CMU Serif")
#counter(heading).update(0)

= Introduction
== Definition
We set a population $F$ and $X_1,X_2,dots,X_n$ is a random sample of size $n$ from the population $F$.If $X_1,X_2,dots,X_n$ are independent and identically distributed random variables,(i.d.d)then their common probability distributed function is:
$
  F(x_1) F(x_2) dots F(x_n) = product_(i=1)^n F(x_i)
$
Their common probability density function is:
$
    f(x_1) f(x_2) dots f(x_n) = product_(i=1)^n f(x_i)
$

*Statistic* Given a random sample $X_1,X_2,dots,X_n$ from a population $F$, a statistic is any real function $g(X_1,X_2,dots,X_n)$ of the sample values $X_1,X_2,dots,X_n$.

*Sample mean* The sample mean is the statistic defined by:
$
    overline(X) = 1/n sum_(i=1)^n X_i
$

*Sample variance* The sample variance is the statistic defined by:
$
    S^2 = 1/(n-1) sum_(i=1)^n (X_i - overline(X))^2
$

*Sample standard deviation* The sample standard deviation is the statistic defined by:
$
  S = sqrt(1/(n-1) sum_(i=1)^n (X_i - overline(X))^2)j
$

They have the following properties:
+ $ sum_(i=1)^n (X_i - overline(X)) = 0 $

+ We apply a transformation to sample $Y_i = a X_i + b$. Then the sample mean and sample variance of $Y_i$ are:
$
    overline(Y) = a overline(X) + b
$
$
    S^2_Y = a^2 S^2_X
$
+ To any constant $c$,we have:
$
  sum_(i=1)^n (X_i - c)^2 >= sum_(i=1)^n (X_i - overline(X))^2
$

*Sample moment* The $k$-th sample origin moment is the statistic defined by:
$
  a_(n,k) = 1/n sum_(i=1)^n X_i^k
$

The $k$-th sample central moment is the statistic defined by:
$
    m_(n,k) = 1/n sum_(i=1)^n (X_i - overline(X))^k
$


*Order statistics* Given a random sample $X_1,X_2,dots,X_n$ from a population $F$, we arrange the sample values in increasing order:$X_((1))<=X_((2))<=dots<=X_((n))$.We call $X_((1)),X_((2)),dots,X_((n))$ the order statistics of the sample.

*Sample median* The sample median is the statistic defined by:
$
  m_(1/2)=dcases(
    X_(((n+1)/2)) ","n "is" "odd",
    (X_((n/2))+X_((n/2+1)))/2 ","n "is" "even"
  )
$

*Extremum of sample* $X_((1))$ and $X_((n))$ are the minimum and maximum of the sample values.

*Sample p-fractile* The sample p-fractile is the statistic defined by:
$
  X_((m)),m=[(n+1)p]
$

*Sample range* The sample range is the statistic defined by:
$
  R = X_((n)) - X_((1))
$

*Sample coefficient of variation* The sample coefficient of variation is the statistic defined by:
$
  hat(nu) = S_n/overline(X)
$
It reflects information of population coefficient of variation.

*Population coefficient of variation* The population coefficient of variation is the statistic defined by:
$
  nu = sqrt(D(X)) / E(X)
$
population coefficient of variation is a measure of relative variability of the population.

*Sample skewness* The sample skewness is the statistic defined by:
$
  hat(beta)_1 = m_(n,3)/m_(n,2)^(3/2) = sqrt(n) sum_(i=1)^n (X_i - overline(X))^3 / (sum_(i=1)^n (X_i - overline(X))^2)^(3/2)
$
It reflects information of population skewness.

*Population skewness* The population skewness is the statistic defined by:
$
  beta_1 = mu_3 / mu_2^(3/2)
$where $mu_i$ is the $i$-th population central moment.It reflects information of relative asymmetry of the population.

*Sample kurtosis* The sample kurtosis is the statistic defined by:
$
  hat(beta)_2 = m_(n,4)/m_(n,2)^2 -3= n (sum_(i=1)^n (X_i - overline(X))^4 )/ (sum_(i=1)^n (X_i - overline(X))^2)^2 -3
$
It reflects information of population kurtosis.

*Population kurtosis* The population kurtosis is the statistic defined by:
$
  beta_2 = mu_4 / mu_2^2 -3
$
It is the measure that reflects the sharpness of the peak near the maximum value of the overall distribution function.

*Empirical distribution function* The empirical distribution function is the statistic defined by:
$
  F_n(x) = dcases(
    0 "," x < X_((1)),
    k/n "," X_((k)) <= x < X_((k+1))","k=1","2","dots","n-1,
    1 "," x >= X_((n))
  )
$

If we note a indicator function $I_A(x)$
$
  I_A(x) = dcases(
    1 "," x in A,
    0 "," x not in A
  )
$
then the empirical distribution function can be written as:
$
  F_n (x) = 1/n sum_(i=1)^n I_((-oo,x)) (X_i)
$
