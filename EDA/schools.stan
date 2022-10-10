/* 
 *Eight schools example from Rubin (1981)
 * Stan uses // for comments (like C++), not # like R
 */


/*
 * Stan variables must be declared (as the sampler is compiled)
 * Variables can be real or integer.
 * You can also specify a lower bound (e.g., to make sure SDs are
 * positive)
 * Data are things are are observed.
 * As in C, Stan lines must end in a ;
 */
data {
  int<lower=0> J; // number of schools
  real y[J];
  // estimated treatment effects
  real<lower=0> sigma[J]; // s.e. of effect estimates
}
/* Similarly you need to declare parameters. */
parameters {
  real mu;                      //Implicit flat prior.
  real<lower=0> tau;            //Implicit flat prior.
  vector[J] eta;
}
/* Transformed parameters are functions of other parameters */
transformed parameters {
  vector[J] theta;
  // Note the redefinition of theta.  See Neal (2011)
  theta <- mu + tau * eta;
}
/*
 * Unlike BUGS and JAGS, Stan is vectorized.  So we don't don't need to
 * write out for loops.
 */
model {
  eta ~ normal(0, 1);
  y ~ normal(theta, sigma); // Stand parameterizes normal
                            // distributions with mean and SD (not
                            // precision!)
}
