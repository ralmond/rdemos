![](img/BNSessionIIIb_DiscretePartialCreditModel0.png)

![](img/BNSessionIIIb_DiscretePartialCreditModel1.jpg)

<span style="color:#000000"> __Bayesian Networks in__ </span>  <span style="color:#000000"> __Educational Assessment__ </span>

<span style="color:#000000"> __Tutorial__ </span>

<span style="color:#000000"> __Session III: __ </span>  <span style="color:#000000"> __Bayes Net with R__ </span>

<span style="color:#000000">Duanli Yan\, Diego Zapata\, ETS</span>

<span style="color:#000000">Russell Almond\, FSU</span>

<span style="color:#8B8B8B">2021 NCME Tutorial: Bayesian Networks in Educational Assessment</span>

<span style="color:#000000"> _SESSION_ </span>  <span style="color:#000000"> __	__ </span>  <span style="color:#000000"> __	__ </span>  <span style="color:#000000"> _TOPIC_ </span>  <span style="color:#000000"> __	__ </span>  <span style="color:#000000"> __	__ </span>  <span style="color:#000000"> __	__ </span>  <span style="color:#000000"> __	__ </span>  <span style="color:#000000"> __	__ </span>  <span style="color:#000000"> __	__ </span>  <span style="color:#000000"> __	__ </span>  <span style="color:#000000"> _PRESENTERS_ </span>

<span style="color:#000000"> __Session 1__ </span>  <span style="color:#000000">:   Evidence Centered Design </span>  <span style="color:#000000">	</span>  <span style="color:#000000">	</span>  <span style="color:#000000">Diego Zapata                       </span>  <span style="color:#000000">	</span>  <span style="color:#000000">               Bayesian Networks</span>  <span style="color:#000000">	</span>  <span style="color:#000000"> </span>  <span style="color:#000000">	</span>  <span style="color:#000000">	</span>  <span style="color:#000000">	</span>  <span style="color:#000000">	</span>

<span style="color:#000000"> __Session 2__ </span>  <span style="color:#000000">:   Bayes Net Applications </span>  <span style="color:#000000">	</span>  <span style="color:#000000">           </span>  <span style="color:#000000">	</span>  <span style="color:#000000">Duanli Yan &                        </span>  <span style="color:#000000">	</span>  <span style="color:#000000">               ACED: ECD in Action </span>  <span style="color:#000000">	</span>  <span style="color:#000000"> </span>  <span style="color:#000000">	</span>  <span style="color:#000000">      Russell Almond</span>  <span style="color:#000000">	</span>  <span style="color:#000000">         </span>  <span style="color:#000000">	</span>  <span style="color:#000000">       </span>  <span style="color:#000000">	</span>  <span style="color:#000000">	</span>

<span style="color:#000000"> __Session 3__ </span>  <span style="color:#000000">:   Bayes Nets with R </span>  <span style="color:#000000">	</span>  <span style="color:#000000">	</span>  <span style="color:#000000">	</span>  <span style="color:#000000">	</span>  <span style="color:#000000">Russell Almond & </span>  <span style="color:#000000">	</span>  <span style="color:#000000">	</span>  <span style="color:#000000"> </span>  <span style="color:#000000">	</span>  <span style="color:#000000">	</span>  <span style="color:#000000">	</span>  <span style="color:#000000">	</span>  <span style="color:#000000">	</span>  <span style="color:#000000">	</span>  <span style="color:#000000">	</span>  <span style="color:#000000">	</span>  <span style="color:#000000">	</span>  <span style="color:#000000">	</span>  <span style="color:#000000">	</span>  <span style="color:#000000">Duanli Yan         </span>

<span style="color:#000000"> __Session 4__ </span>  <span style="color:#000000">:   Refining Bayes Nets with </span>  <span style="color:#000000">	</span>  <span style="color:#000000">	</span>  <span style="color:#000000">Duanli Yan & </span>  <span style="color:#000000">	</span>  <span style="color:#000000">         </span>  <span style="color:#000000">	</span>  <span style="color:#000000">   Data </span>  <span style="color:#000000">	</span>  <span style="color:#000000">	</span>  <span style="color:#000000">	</span>  <span style="color:#000000">	</span>  <span style="color:#000000">	</span>  <span style="color:#000000">	</span>  <span style="color:#000000">	</span>  <span style="color:#000000">	</span>  <span style="color:#000000">Russell Almond </span>

# Discrete Partial Credit Model:  A generic framework for building CPTs

# Russell Almond

# Conditional Probability Tables

* <span style="color:#000000">Focus on a child variable</span>
* <span style="color:#000000">Child has zero or more parent variables in graph</span>
* <span style="color:#000000">For each configuration of parent variables\, need conditional probability of each child variable\.  </span>
  * <span style="color:#000000">Unconditional probability in the case of no parents</span>
* <span style="color:#000000">If there are </span>  <span style="color:#000000"> _N_ </span>  <span style="color:#000000"> parents\, each with </span>  <span style="color:#000000"> _M_ </span>  <span style="color:#000000"> states and the child variable has </span>  <span style="color:#000000"> _K_ </span>  <span style="color:#000000"> states\, then the number of unconstrained entries in the table is</span>
* <span style="color:#000000"> _M_ </span>  <span style="color:#000000"> _N_ </span>  <span style="color:#000000"> _\(K\-1\)_ </span>

# Problems

<span style="color:#000000">Too many parameters to comfortably elicit</span>

<span style="color:#000000">Certain cases might be rare in population \(</span>  <span style="color:#000000">Very High </span>  <span style="color:#000000">on </span>  <span style="color:#000000"> _Skill 1_ </span>  <span style="color:#000000"> and </span>  <span style="color:#000000">Very Low </span>  <span style="color:#000000">on </span>  <span style="color:#000000"> _Skill 2_ </span>  <span style="color:#000000">\)</span>

<span style="color:#000000">Want to capture intuition of experts on how skills interact to generate performace\.</span>

# Reduced Parameter Models

* <span style="color:#000000">Noisy\-and and Noisy\-Or models </span>
  * <span style="color:#000000">NIDA\, DINA and Fusion model \(Junker & Sijtsma\)</span>
  * <span style="color:#000000">Assume binary responses</span>
* <span style="color:#000000">Discrete IRT models</span>
* <span style="color:#000000">DiBello—Samejima models</span>
  * <span style="color:#000000">Based on “effective theta” and graded response model</span>
  * <span style="color:#000000">Compensatory\, Conjunctive\, Disjunctive and Inhibitor relationships</span>
* <span style="color:#000000">CPTtools framework</span>
  * <span style="color:#000000">Effective theta mapping</span>
  * <span style="color:#000000">Selectable combination rule</span>
  * <span style="color:#000000">Selectable link function \(graded response\, normal\, generalized partial credit\)</span>
* <span style="color:#000000">For all of these model types\, number of parameters grows linearly with number of parents</span>

# Noisy-And (Or)

![](img/BNSessionIIIb_DiscretePartialCreditModel2.png)

<span style="color:#000000">All input skills needed to solve problem</span>

<span style="color:#000000">Bypass parameter for Skill </span>  <span style="color:#000000"> _j_ </span>  <span style="color:#000000">\, </span>  <span style="color:#000000"> _q_ </span>  <span style="color:#000000"> _j_ </span>

<span style="color:#000000">Slip probability \(overall\)\, </span>  <span style="color:#000000"> _q_ </span>  <span style="color:#000000"> _0_ </span>

<span style="color:#000000">Probability of correct outcome</span>

<span style="color:#000000">NIDA/DINA</span>

![](img/BNSessionIIIb_DiscretePartialCreditModel3.png)

# Noisy Min (Max)

* <span style="color:#000000">If skills have more than two levels</span>
  * <span style="color:#000000">Use a cut point to make skill binary \(e\.g\.\, reading skill must be greater than X\)</span>
  * <span style="color:#000000">Use a Noisy\-min model</span>
    * <span style="color:#000000">Probability of success is determined by the weakest skill</span>
* <span style="color:#000000">Noisy\-And/Min common in ed\. measurement\, Noisy\-Or/Max common in diagnosis</span>
* <span style="color:#000000">Number of parameters is linear in number of parents/states</span>
* <span style="color:#000000">Variants of propagation algorithm take advantage of extra Noisy\-Or/And independence conditions</span>

# Discrete IRT (2PL) model

* <span style="color:#000000">Imagine a case with a single parent and a binary \(correct/incorrect\) child\.</span>
* <span style="color:#000000">Map states of parent variable onto a continuous scale:  </span>  <span style="color:#000000"> _effective theta\, _ </span>
* <span style="color:#000000">Plug into IRT equation to get conditional probability of “correct”</span>
  * <span style="color:#000000"> _a_ </span>  <span style="color:#000000"> _j_ </span>  <span style="color:#000000"> _ – _ </span>  <span style="color:#000000">discrimination parameter</span>
  * <span style="color:#000000"> _b_ </span>  <span style="color:#000000"> _j_ </span>  <span style="color:#000000"> _ – _ </span>  <span style="color:#000000">difficulty parameter</span>
  * <span style="color:#000000"> _1\.7 – _ </span>  <span style="color:#000000">Scaling constant \(makes logistic curve look like normal ogive\)</span>

# DiBello--Samejima Models

<span style="color:#000000">Single parent version</span>

<span style="color:#000000">Map each level of parent state to “effective theta” on IRT \(N\(0\,1\)\) scale\,</span>

<span style="color:#000000">Now plug into Samejima graded response model to get probability of outcome</span>

<span style="color:#000000">Uses standard IRT parameters\, “difficulty” and “discrimination” </span>

<span style="color:#000000">DiBello\-\-Normal model uses regression model rather than graded response</span>

![](img/BNSessionIIIb_DiscretePartialCreditModel4.png)

# Various Combination Rules

* <span style="color:#000000">For Multiple Parents\, assign each parent </span>  <span style="color:#000000"> _j _ </span>  <span style="color:#000000">an effective theta at each level </span>  <span style="color:#000000"> _k_ </span>  <span style="color:#000000">\,         \.</span>
* <span style="color:#000000">Combine Using a Combination Rule \(Structure Function\)</span>
* <span style="color:#000000">Possible Structure Functions:</span>
  * <span style="color:#000000">Compensatory = average</span>
  * <span style="color:#000000">Conjunctive = min</span>
  * <span style="color:#000000">Disjunctive = max</span>
  * <span style="color:#000000">Inhibitor; e\.g\. level </span>  <span style="color:#000000"> _k_ </span>  <span style="color:#000000">\* on      :</span>
* <span style="color:#000000">where       is some low value\.</span>

![](img/BNSessionIIIb_DiscretePartialCreditModel5.png)

![](img/BNSessionIIIb_DiscretePartialCreditModel6.png)

# Effective Thetas for Compensatory Relationship

![](img/BNSessionIIIb_DiscretePartialCreditModel7.png)

<span style="color:#000000">equally spaced normal quantiles</span>

![](img/BNSessionIIIb_DiscretePartialCreditModel8.png)

![](img/BNSessionIIIb_DiscretePartialCreditModel9.png)

# Effective Theta to CPT

<span style="color:#000000">Introduce new parameter </span>  <span style="color:#000000"> _d_ </span>  <span style="color:#000000"> _inc_ </span>  <span style="color:#000000"> _ _ </span>  <span style="color:#000000">as spread between difficulties in Samejima model</span>

<span style="color:#000000"> _b_ </span>  <span style="color:#000000"> _i\,Full_ </span>  <span style="color:#000000"> _ = b_ </span>  <span style="color:#000000"> _j_ </span>  <span style="color:#000000"> _ \+ d_ </span>  <span style="color:#000000"> _inc_ </span>  <span style="color:#000000"> _/2                 b_ </span>  <span style="color:#000000"> _j\,Partial_ </span>  <span style="color:#000000"> _ = b_ </span>  <span style="color:#000000"> _j_ </span>  <span style="color:#000000"> _ \- d_ </span>  <span style="color:#000000"> _inc_ </span>  <span style="color:#000000"> _/2_ </span>  <span style="color:#000000"> </span>

<span style="color:#000000">Conditional probability table for</span>  <span style="color:#000000"> _ d_ </span>  <span style="color:#000000"> _inc_ </span>  <span style="color:#000000"> _ _ </span>  <span style="color:#000000">= 1 is then…</span>

![](img/BNSessionIIIb_DiscretePartialCreditModel10.png)

# CPTtools framework

* <span style="color:#000000">Building a CPT requires three steps:</span>
* <span style="color:#000000">Map each parent state into a </span>  <span style="color:#000000"> _effective theta_ </span>  <span style="color:#000000"> for that parent</span>
* <span style="color:#000000">Combine the parent effective thetas to an effective theta for each row of the CPT using one \(or more\) </span>  <span style="color:#000000"> _combination rules_ </span>
  * <span style="color:#000000">Combination rules generally take one or more \(often one for each parent variable\) </span>  <span style="color:#000000"> _discrimination parameters_ </span>  <span style="color:#000000"> which weight the parent variable contributions \(log alphas\)</span>
  * <span style="color:#000000">Combination rules generally take one or more </span>  <span style="color:#000000"> _difficulty parameters_ </span>  <span style="color:#000000"> \(often one for each state of the child variable\) which shift the average probability of a correct response \(betas\)</span>
* <span style="color:#000000">Map the effect theta for each row into a conditional probability of seeing each state using a </span>  <span style="color:#000000"> _link function_ </span>
  * <span style="color:#000000">Link functions can take a scaling parameter\. \(link scale\)</span>

# Parent level effective thetas

<span style="color:#000000">Effective theta scale is a logit scale corresponds to mean 0 SD 1 in a “standard” population\.</span>

<span style="color:#000000">Want the effective theta values to be equally spaced on this scale</span>

<span style="color:#000000">Want the marginal distribution implied by the effective thetas to be uniform \(unit of the combination operator\)</span>

<span style="color:#000000">What the effective theta transformation to be effectively invertible \(this is reason to add the 1\.7 to the IRT equation\)\.</span>

# Equally spaced quantiles of the normal distribution

<span style="color:#000000">Suppose variable has </span>  <span style="color:#000000"> _M_ </span>  <span style="color:#000000"> states:  </span>  <span style="color:#000000"> _0\,…\,M\-1_ </span>

<span style="color:#000000">Want the midpoint of the interval going from probability </span>  <span style="color:#000000"> _m/M _ </span>  <span style="color:#000000">to </span>  <span style="color:#000000"> _\(m\+1\)/M_ </span>  <span style="color:#000000">\.</span>

<span style="color:#000000">Solution is to map state </span>  <span style="color:#000000"> _m_ </span>  <span style="color:#000000"> onto </span>

<span style="color:#000000">R code:  </span>  <span style="color:#000000">qnorm\(\(1:M\)\-\.5\)/M\)</span>

