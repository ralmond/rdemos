![](img/BNSession3a_RNetica0.jpg)

![](img/BNSession3a_RNetica1.png)

<span style="color:#000000"> __Bayesian Networks in__ </span>  <span style="color:#000000"> __Educational Assessment__ </span>

<span style="color:#000000"> __Tutorial__ </span>

<span style="color:#000000"> __Session III:__ </span>  <span style="color:#000000"> __ __ </span>  <span style="color:#000000"> __Bayes Net with R__ </span>

<span style="color:#000000">Duanli Yan\, Diego Zapata\, ETS</span>

<span style="color:#000000">Russell Almond\, FSU</span>

<span style="color:#8B8B8B">2021 NCME Tutorial: Bayesian </span>  <span style="color:#8B8B8B">Networks in Educational </span>  <span style="color:#8B8B8B">Assessment</span>

<span style="color:#000000"> _SESSION_ </span>  <span style="color:#000000"> __	__ </span>  <span style="color:#000000"> __	__ </span>  <span style="color:#000000"> _TOPIC_ </span>  <span style="color:#000000"> __	__ </span>  <span style="color:#000000"> __	__ </span>  <span style="color:#000000"> __	__ </span>  <span style="color:#000000"> __	__ </span>  <span style="color:#000000"> __	__ </span>  <span style="color:#000000"> __	__ </span>  <span style="color:#000000"> __	__ </span>  <span style="color:#000000"> _PRESENTERS_ </span>

<span style="color:#000000"> __Session 1__ </span>  <span style="color:#000000">:   Evidence Centered Design </span>  <span style="color:#000000">	</span>  <span style="color:#000000">	</span>  <span style="color:#000000">Diego Zapata                       </span>  <span style="color:#000000">	</span>  <span style="color:#000000">               Bayesian Networks</span>  <span style="color:#000000">	</span>  <span style="color:#000000"> </span>  <span style="color:#000000">	</span>  <span style="color:#000000">	</span>  <span style="color:#000000">	</span>  <span style="color:#000000">	</span>

<span style="color:#000000"> __Session 2__ </span>  <span style="color:#000000">:   Bayes Net Applications </span>  <span style="color:#000000">	</span>  <span style="color:#000000">           </span>  <span style="color:#000000">	</span>  <span style="color:#000000">Duanli Yan &                        </span>  <span style="color:#000000">	</span>  <span style="color:#000000">               ACED: ECD in Action </span>  <span style="color:#000000">	</span>  <span style="color:#000000"> </span>  <span style="color:#000000">	</span>  <span style="color:#000000">      Russell Almond</span>  <span style="color:#000000">	</span>  <span style="color:#000000">         </span>  <span style="color:#000000">	</span>  <span style="color:#000000">       </span>  <span style="color:#000000">	</span>  <span style="color:#000000">	</span>

<span style="color:#000000"> __Session 3__ </span>  <span style="color:#000000">:   Bayes Nets with R </span>  <span style="color:#000000">	</span>  <span style="color:#000000">	</span>  <span style="color:#000000">	</span>  <span style="color:#000000">	</span>  <span style="color:#000000">Russell Almond & </span>  <span style="color:#000000">	</span>  <span style="color:#000000">	</span>  <span style="color:#000000"> </span>  <span style="color:#000000">	</span>  <span style="color:#000000">	</span>  <span style="color:#000000">	</span>  <span style="color:#000000">	</span>  <span style="color:#000000">	</span>  <span style="color:#000000">	</span>  <span style="color:#000000">	</span>  <span style="color:#000000">	</span>  <span style="color:#000000">	</span>  <span style="color:#000000">	</span>  <span style="color:#000000">	</span>  <span style="color:#000000">Duanli Yan         </span>

<span style="color:#000000"> __Session 4__ </span>  <span style="color:#000000">:   Refining Bayes Nets with </span>  <span style="color:#000000">	</span>  <span style="color:#000000">	</span>  <span style="color:#000000">Duanli Yan & </span>  <span style="color:#000000">	</span>  <span style="color:#000000">         </span>  <span style="color:#000000">	</span>  <span style="color:#000000">   Data </span>  <span style="color:#000000">	</span>  <span style="color:#000000">	</span>  <span style="color:#000000">	</span>  <span style="color:#000000">	</span>  <span style="color:#000000">	</span>  <span style="color:#000000">	</span>  <span style="color:#000000">	</span>  <span style="color:#000000">	</span>  <span style="color:#000000">Russell Almond </span>

# RNetica

# Quick Start Guide
Scoring A Student

<span style="color:#8B8B8B">RNetica Quick Start</span>

# Downloading

* <span style="color:#0000FF"> _[http://pluto\.coe\.fsu\.edu/RNetica/](http://pluto.coe.fsu.edu/RNetica/)_ </span>
* <span style="color:#000000">Four Packages:</span>
  * <span style="color:#000000">RNetica – R to Netica link</span>
  * <span style="color:#000000">CPTtools – Design patterns for CPTs</span>
  * <span style="color:#000000">Peanut/PNetica \-\- Object\-Oriented Parameterized Network</span>
* <span style="color:#000000">Source & binary version \(Win 64\, Mac OS X\)</span>
  * <span style="color:#000000">Binary versions include Netica\.dll/libNetica\.so</span>
    * <span style="color:#000000">In RStudio select “Package Archive” rather than CRAN</span>
  * <span style="color:#000000">Source version need to download from </span>  <span style="color:#0000FF"> _[http://www\.norsys\.com/](http://www.norsys.com/)_ </span>  <span style="color:#000000"> first</span>
    * <span style="color:#000000">See INSTALLATION</span>

<span style="color:#8B8B8B">RNetica Quick Start</span>

# License

* <span style="color:#000000">R – GPL\-3 \(Free and open source\)</span>
* <span style="color:#000000">RNetica – Artistic \(Free and open source\)</span>
* <span style="color:#000000">Netica\.dll/libNetica\.so – Commercial \(open API\, but not open source\)</span>
  * <span style="color:#000000">Free Student/Demo version</span>
    * <span style="color:#000000">Limited number of nodes</span>
    * <span style="color:#000000">Limited usage \(education\, evaluation of Netica\)</span>
  * <span style="color:#000000">Paid version \(see </span>  <span style="color:#0000FF"> _[http://www\.norsys\.com/](http://www.norsys.com/)_ </span>  <span style="color:#000000"> for price information\)</span>
    * <span style="color:#000000"> </span>  <span style="color:#000000">Need to purchase API not GUI version of Netica</span>
    * <span style="color:#000000">May want both \(use GUI to visualize networks build in RNetica\)</span>
* <span style="color:#000000">CPTtools – Artistic \(Free and open source\)\, does not depend on Netica</span>

<span style="color:#8B8B8B">RNetica Quick Start</span>

# Installing the License Key

<span style="color:#000000">When you purchase a license\, Norsys will send you a license key\.  Something that looks like:  “\+Course/FloridaSU/Ex15\-05\-30\,120\,310/XXXXX” \(Where I’ve obscured the last 5 security digits\)</span>

<span style="color:#000000">To install the license key\, start R in your project directory and type:</span>

<span style="color:#000000">> NeticaLicenseKey <\- “\+Course/FloridaSU/Ex15\-05\-30\,120\,310/XXXXX” </span>

<span style="color:#000000">> q\(“yes”\)</span>

<span style="color:#000000">Restart R and type</span>

<span style="color:#000000">> library\(RNetica\)</span>

<span style="color:#000000">If license key is not installed\, then you will get the limited/student mode\.  Most of these examples will run</span>

<span style="color:#8B8B8B">RNetica Quick Start</span>

# The R heap and the Netica heap

<span style="color:#000000">R and Netica have two different workspaces \(memory heaps\)</span>

<span style="color:#000000">R workspace is saved and restored automatically when you quick and restart R\.</span>

<span style="color:#000000">Netica heap must be reconnected manually\.</span>

<span style="color:#8B8B8B">RNetica Quick Start</span>

# Active and Inactive pointers

<span style="color:#000000">When RNetica creates/finds a Netica object it creates a corresponding R object</span>

<span style="color:#000000">If the R object is active then it points to the Netica object\, and the Netica object points back at it</span>

<span style="color:#000000">If the pointer gets broken \(saving & restarting R\, deleting the network/node\) then the R object becomes inactive\.</span>

<span style="color:#000000">The function is\.active\(nodeOrNet\) test to see if the node/net is active</span>

<span style="color:#8B8B8B">RNetica Quick Start</span>

# Mini-ACED Proficiency model

<span style="color:#000000">Subset of ACED network \(Shute\, Hansen & Almond \(2008\); </span>  <span style="color:#0000FF"> _[http://ecd\.ralmond\.net/ecdwiki/ACED](http://ecd.ralmond.net/ecdwiki/ACED)_ </span>  <span style="color:#000000"> \)</span>

<span style="color:#000000">Proficiency Model subset:</span>

![](img/BNSession3a_RNetica2.png)

<span style="color:#8B8B8B">RNetica Quick Start</span>

# Mini-ACED EM Fragments

<span style="color:#000000">All ACED tasks were scored correct/incorrect</span>

<span style="color:#000000">Each evidence model is represented by a fragment consisting of observables with </span>  <span style="color:#000000"> _stub _ </span>  <span style="color:#000000">edges indicating where it should be </span>  <span style="color:#000000"> _adjoined_ </span>  <span style="color:#000000"> with the network\.</span>

![](img/BNSession3a_RNetica3.png)

![](img/BNSession3a_RNetica4.png)

<span style="color:#000000">Common Ratio Easy</span>

<span style="color:#000000">Model Extend Table Hard</span>

<span style="color:#8B8B8B">RNetica Quick Start</span>

# Task to EM map

<span style="color:#000000">Need a table to tell us which EM to use with which task</span>

| Task ID | EM Filename | X | Y |
| :-: | :-: | :-: | :-: |
| tCommonRatio1b | CommonRatioEasyEM | 108 | 414 |
| tCommonRatio2a | CommonRatioMedEM | 108 | 534 |
| tCommonRatio2b | CommonRatioMedEM | 108 | 654 |
| tCommonRatio3a | CommonRatioHardEM | 108 | 774 |
| tCommonRatio3b | CommonRatioHardEM | 108 | 894 |
| tExamplesGeometric1a | ExamplesEasyEM | 342 | 294 |
| tExamplesGeometric1b | ExamplesEasyEM | 342 | 414 |
|  |  |  |  |

<span style="color:#8B8B8B">RNetica Quick Start</span>

# Scoring Script

<span style="color:#000000">Follow along using the script found in </span>  <span style="color:#000000">ScoringScript\.R </span>  <span style="color:#000000">in the miniACED folder\.</span>

<span style="color:#000000">Don’t forget to </span>  <span style="color:#000000">setwd\(\)</span>  <span style="color:#000000"> to the miniACED folder \(as it needs to find its networks\)\.</span>

<span style="color:#000000">Don’t forget to set the license key before issuing </span>  <span style="color:#000000">library\(RNetica\)</span>  <span style="color:#000000"> command\.</span>

<span style="color:#8B8B8B">RNetica Quick Start</span>

# Reloading Nets and Nodes

<span style="color:#00B050">\#\# Scoring Script</span>

<span style="color:#00B050">\#\# Preliminaries</span>

<span style="color:#000000">library\(RNetica\)</span>

<span style="color:#000000">library\(CPTtools\)</span>

<span style="color:#00B050">\#\# Read in network – Do this every time R is restarted</span>

<span style="color:#000000">profModel <\- ReadNetworks\("miniACEDPnet\.dne"\)</span>

<span style="color:#00B050">\#\# If profModels already exists could also use</span>

<span style="color:#00B050">\#\# Reconnect nodes – Do this every time R is restarted</span>

<span style="color:#000000">allNodes <\- NetworkAllNodes\(profModel\)</span>

<span style="color:#000000">sgp <\- allNodes$SolveGeometricProblems</span>

<span style="color:#000000">profNodes <\- NetworkNodesInSet\(profModel\,"Proficiencies"\)</span>

<span style="color:#8B8B8B">RNetica Quick Start</span>

# Aside 1: Node Sets

* <span style="color:#000000">Netica defines a node set functionality which</span>
  * <span style="color:#000000">Adds a collection of labels \(sets\) to each node</span>
  * <span style="color:#000000">Defines a collection of nodes with that label</span>
* <span style="color:#000000">Netica GUI really only offers the opportunity to color nodes by set</span>
* <span style="color:#000000">RNetica can loop over node sets \(lists of nodes\)</span>
* <span style="color:#00B050">\#\# Node Sets</span>
* <span style="color:#000000">NetworkNodeSets\(profModel\)</span>
* <span style="color:#000000">NetworkNodesInSet\(profModel\,"pnodes"\)</span>
* <span style="color:#000000">NodeSets\(sgp\)</span>
* <span style="color:#00B050">\#\# These are all settable</span>
* <span style="color:#000000">NodeSets\(sgp\) <\- c\(NodeSets\(sgp\)\,"HighLevel"\)</span>
* <span style="color:#000000">NodeSets\(sgp\)</span>

<span style="color:#8B8B8B">RNetica Quick Start</span>

# Aside 2:  RNetica Functions

<span style="color:#00B050">\#\# Querying Nodes</span>

<span style="color:#000000">NodeStates\(sgp\)   </span>  <span style="color:#00B050">\#List states</span>

<span style="color:#000000">NodeParents\(sgp\)  </span>  <span style="color:#00B050">\#List parents</span>

<span style="color:#000000">NodeLevels\(sgp\)   </span>  <span style="color:#00B050">\#List numeric values associated with states</span>

<span style="color:#000000">NodeProbs\(sgp\) </span>  <span style="color:#00B050">\# Conditional Probability Table \(as array\)</span>

<span style="color:#000000">sgp\[\] </span>  <span style="color:#00B050">\# Conditional Probability Table \(as data frame\)</span>

<span style="color:#00B050">\#\# These are all settable \(can be used on RHS of <\-\) for </span>

<span style="color:#00B050">\#\# model construction</span>

<span style="color:#00B050">\#\# Inference</span>

<span style="color:#000000">CompileNetwork\(profModel\) </span>  <span style="color:#00B050">\#Lightning bolt on GUI</span>  <span style="color:#000000"> </span>

<span style="color:#00B050">\#\# Must do this before inference</span>

<span style="color:#00B050">\#\# Recompiling an already compiled network is harmless</span>

<span style="color:#8B8B8B">RNetica Quick Start</span>

# Aside 2: Inference

<span style="color:#00B050">\#\# Enter Evidence by setting values for these functions</span>

<span style="color:#000000">NodeValue\(sgp\) </span>  <span style="color:#00B050">\#View or set the value</span>

<span style="color:#000000">NodeLikelihood\(sgp\) </span>  <span style="color:#00B050">\#Virtual evidence</span>

<span style="color:#00B050">\#\# Query beliefs</span>

<span style="color:#000000">NodeBeliefs\(sgp\) </span>  <span style="color:#00B050">\#Current probability \(given entered evidence\)</span>

<span style="color:#000000">NodeExpectedValue\(sgp\) </span>  <span style="color:#00B050">\#If node has values\, EAP</span>

<span style="color:#00B050">\#\# These aren't settable</span>

<span style="color:#00B050">\#\# Retract Evidence</span>

<span style="color:#000000">RetractNodeFinding\(profNodes$ExamplesGeometric\)</span>

<span style="color:#000000">RetractNetFindings\(profModel\)</span>

<span style="color:#8B8B8B">RNetica Quick Start</span>

# Aside 2: Example

<span style="color:#00B050">\#\# Enter Evidence</span>

<span style="color:#000000">NodeValue\(profNodes$CommonRatio\) <\- "Medium"</span>

<span style="color:#00B050">\#\# Enter Evidence "Not Low" \("High or Medium"\)</span>

<span style="color:#000000">NodeLikelihood\(profNodes$ExamplesGeometric\) <\- c\(1\,1\,0\)</span>

<span style="color:#000000">NodeBeliefs\(sgp\) </span>  <span style="color:#00B050">\#Current probability \(given entered evidence\)</span>

<span style="color:#000000">NodeExpectedValue\(sgp\) </span>  <span style="color:#00B050">\#If node has values\, EAP</span>

<span style="color:#00B050">\#\# Retract Evidence</span>

<span style="color:#000000">RetractNetFindings\(profModel\)</span>

<span style="color:#00B050">\#\# Many more examples</span>

<span style="color:#000000">help\(RNetica\)</span>

<span style="color:#8B8B8B">RNetica Quick Start</span>

# Back to work

<span style="color:#000000">Load the evidence model table</span>

<span style="color:#000000">Row names are task IDs</span>

<span style="color:#000000">EM column contains evidence model name</span>

<span style="color:#000000">EM filename has suffix </span>  <span style="color:#000000">“\.dne” </span>  <span style="color:#000000">attached\.</span>

<span style="color:#00B050">\#\# Read in task\->evidence model mapping</span>

<span style="color:#000000">EMtable <\- read\.csv\("MiniACEDEMTable\.csv"\,row\.names=1\,</span>

<span style="color:#000000">                    </span>  <span style="color:#000000">as\.is=2\) </span>  <span style="color:#00B050">\#Keep EM names as strings</span>

<span style="color:#000000">head\(EMtable\) </span>

<span style="color:#8B8B8B">RNetica Quick Start</span>

# A student walks into the test center …

* <span style="color:#000000">Student gives the name “Fred”</span>
* <span style="color:#000000">Student is the right grade/age for ACED \(8</span>  <span style="color:#000000">th</span>  <span style="color:#000000"> or 9</span>  <span style="color:#000000">th</span>  <span style="color:#000000"> grader\, pre\-algebra\)</span>
* <span style="color:#000000">Bayes net has three states</span>
  * <span style="color:#000000">Fred logs into ACED</span>
  * <span style="color:#000000">Fred attempts the task </span>  <span style="color:#000000">tCommonRatio1a</span>  <span style="color:#000000"> and gets it right</span>
  * <span style="color:#000000">Fred attempts the task </span>  <span style="color:#000000">tCommonRatio2a</span>  <span style="color:#000000"> and gets it wrong</span>

<span style="color:#8B8B8B">RNetica Quick Start</span>

# Start a new student

<span style="color:#00B050">\#\# Copy the master proficiency model</span>

<span style="color:#00B050">\#\# to make student model</span>

<span style="color:#000000">Fred\.SM <\- CopyNetworks\(profModel\,"Fred"\)</span>

<span style="color:#000000">Fred\.SMvars <\- NetworkAllNodes\(Fred\.SM\)</span>

<span style="color:#000000">CompileNetwork\(Fred\.SM\)</span>

<span style="color:#00B050">\#\# Setup score history</span>

<span style="color:#000000">prior <\- NodeBeliefs\(Fred\.SMvars$SolveGeometricProblems\)</span>

<span style="color:#000000">Fred\.History <\- matrix\(prior\,1\,3\)</span>

<span style="color:#000000">row\.names\(Fred\.History\) <\- "\*Baseline\*"</span>

<span style="color:#000000">colnames\(Fred\.History\) <\- names\(prior\)</span>

<span style="color:#000000">Fred\.History</span>

<span style="color:#8B8B8B">RNetica Quick Start</span>

# Score 1st Task

<span style="color:#00B050">\#\#\# Fred does a task</span>

<span style="color:#000000">t\.name <\- "tCommonRatio1a"</span>

<span style="color:#000000">t\.isCorrect <\- "Yes"</span>

<span style="color:#00B050">\#\# Adjoin SM and EM</span>

<span style="color:#000000">EMnet <\- ReadNetworks\(paste\(EMtable\[t\.name\,"EM"\]\,"dne"\,sep="\."\)\)</span>

<span style="color:#000000">obs <\- AdjoinNetwork\(Fred\.SM\,EMnet\)</span>

<span style="color:#000000">NetworkAllNodes\(Fred\.SM\) </span>

<span style="color:#00B050">\#\# Fred\.SM is now the Motif for the current task\.</span>

<span style="color:#000000">CompileNetwork\(Fred\.SM\)</span>

<span style="color:#00B050">\#\# Enter finding</span>

<span style="color:#000000">NodeFinding\(obs$isCorrect\) <\- t\.isCorrect</span>

<span style="color:#8B8B8B">RNetica Quick Start</span>

# Stats and Cleanup for 1st task

<span style="color:#00B050">\#\# Calculate statistics of interest</span>

<span style="color:#000000">post <\- NodeBeliefs\(Fred\.SMvars$SolveGeometricProblems\)</span>

<span style="color:#000000">Fred\.History <\- rbind\(Fred\.History\,new=post\)</span>

<span style="color:#000000">rownames\(Fred\.History\)\[nrow\(Fred\.History\)\] <\- paste\(t\.name\,t\.isCorrect\,sep="="\)</span>

<span style="color:#000000">Fred\.History</span>

<span style="color:#00B050">\#\# Cleanup and Observable no longer needed\, so absorb it:</span>

<span style="color:#000000">DeleteNetwork\(EMnet\) \#\# Delete EM</span>

<span style="color:#00B050">\#\#</span>  <span style="color:#000000">AbsorbNodes\(obs\)</span>

<span style="color:#00B050">\#\# Currently\, there is a Netica bug with Absorb Nodes\, we will leave</span>

<span style="color:#00B050">\#\# this node in place as that is mostly harmless\.</span>

<span style="color:#8B8B8B">RNetica Quick Start</span>

# 2nd Task

<span style="color:#00B050">\#\#\# Fred does another task</span>

<span style="color:#000000">t\.name <\- "tCommonRatio2a"</span>

<span style="color:#000000">t\.isCorrect <\- "No"</span>

<span style="color:#000000">EMnet <\- ReadNetworks\(paste\(EMtable\[t\.name\,"EM"\]\,"dne"\,sep="\."\)\)</span>

<span style="color:#000000">obs <\- AdjoinNetwork\(Fred\.SM\,EMnet\)</span>

<span style="color:#000000">NetworkAllNodes\(Fred\.SM\) </span>

<span style="color:#00B050">\#\# Fred\.SM is now the Motif for the current task\.</span>

<span style="color:#000000">CompileNetwork\(Fred\.SM\)</span>

<span style="color:#000000">NodeFinding\(obs\[\[1\]\]\) <\- t\.isCorrect</span>

<span style="color:#000000">post <\- NodeBeliefs\(Fred\.SMvars$SolveGeometricProblems\)</span>

<span style="color:#000000">Fred\.History <\- rbind\(Fred\.History\,new=post\)</span>

<span style="color:#000000">rownames\(Fred\.History\)\[nrow\(Fred\.History\)\] <\- </span>

<span style="color:#000000">      </span>  <span style="color:#000000">paste\(t\.name\,t\.isCorrect\,sep="="\)</span>

<span style="color:#000000">Fred\.History</span>

<span style="color:#000000">\#</span>  <span style="color:#00B050">\# Cleanup:  Delete EM and Absorb observables</span>

<span style="color:#000000">DeleteNetwork\(EMnet\) \#\# Delete EM</span>

<span style="color:#00B050">\#\#</span>  <span style="color:#000000"> AbsorbNodes\(obs\)</span>

<span style="color:#8B8B8B">RNetica Quick Start</span>

# Save and Restore

<span style="color:#00B050">\#\# Fred logs out</span>

<span style="color:#000000">WriteNetworks\(Fred\.SM\,"FredSM\.dne"\)</span>

<span style="color:#000000">DeleteNetwork\(Fred\.SM\)</span>

<span style="color:#000000">is\.active\(Fred\.SM\)  </span>

<span style="color:#00B050">\#\# No longer active in Netica space</span>

<span style="color:#00B050">\#\# Fred logs back in</span>

<span style="color:#000000">Fred\.SM <\- ReadNetworks\("FredSM\.dne"\)</span>

<span style="color:#000000">is\.active\(Fred\.SM\)</span>

<span style="color:#8B8B8B">RNetica Quick Start</span>

# Getting Serious

* <span style="color:#000000">ACED field test has 230 students attempt all 63 tasks\.</span>
* <span style="color:#000000">File miniACED\-Geometric contains 30 task subset</span>
  * <span style="color:#000000">There may be data registration issues here\, don’t publish using these data before checking with me for an update</span>
* <span style="color:#000000">Each row is one student Record</span>
* <span style="color:#000000">Lets score the first student</span>
  * <span style="color:#000000">And build a score history</span>

<span style="color:#8B8B8B">RNetica Quick Start</span>

# Setup for mini-ACED

<span style="color:#000000">miniACED\.data <\- read\.csv\("miniACED\-Geometric\.csv"\,row\.names=1\)</span>

<span style="color:#000000">head\(miniACED\.data\)</span>

<span style="color:#000000">names\(miniACED\.data\)</span>

<span style="color:#00B050">\#\# Mark columns of table corresponding to tasks</span>

<span style="color:#000000">first\.task <\- 9</span>

<span style="color:#000000">last\.task <\- ncol\(miniACED\.data\)</span>

<span style="color:#00B050">\#\# Code key for numeric values</span>

<span style="color:#000000">t\.vals <\- c\("No"\,"Yes"\)</span>

<span style="color:#8B8B8B">RNetica Quick Start</span>

# Setup new Student

<span style="color:#00B050">\#\# Pick a student\, we might normally iterate over this\.</span>

<span style="color:#000000">Student\.row <\- 1</span>

<span style="color:#00B050">\#\# Setup for student in sample</span>

<span style="color:#00B050">\#\# Create Student Model from Proficiency Model</span>

<span style="color:#000000">Student\.SM <\- CopyNetworks\(profModel\,"Student"\)</span>

<span style="color:#000000">Student\.SMvars <\- NetworkAllNodes\(Student\.SM\)</span>

<span style="color:#000000">CompileNetwork\(Student\.SM\)</span>

<span style="color:#00B050">\#\# Initialize history list</span>

<span style="color:#000000">prior <\- NodeBeliefs\(Student\.SMvars$SolveGeometricProblems\)</span>

<span style="color:#000000">Student\.History <\- matrix\(prior\,1\,3\)</span>

<span style="color:#000000">row\.names\(Student\.History\) <\- "\*Baseline\*"</span>

<span style="color:#000000">colnames\(Student\.History\) <\- names\(prior\)</span>

<span style="color:#8B8B8B">RNetica Quick Start</span>

# Loop Part 1:  Add Evidence

<span style="color:#00B050">\#\# Now loop over tasks</span>

<span style="color:#000000">for \(itask in first\.task:last\.task\) \{</span>

<span style="color:#000000"> </span>  <span style="color:#00B050"> </span>  <span style="color:#00B050">\#\# Look up the EM for the task\, and adjoin it\.</span>

<span style="color:#000000">  </span>  <span style="color:#000000">tid <\- names\(miniACED\.data\)\[itask\]</span>

<span style="color:#000000">  </span>  <span style="color:#000000">EMnet <\- ReadNetworks\(paste\(EMtable\[tid\,"EM"\]\,"dne"\,sep="\."\)\)</span>

<span style="color:#000000">  </span>  <span style="color:#000000">obs <\- AdjoinNetwork\(Student\.SM\,EMnet\)</span>

<span style="color:#000000">  </span>  <span style="color:#000000">CompileNetwork\(Student\.SM\)</span>

<span style="color:#000000">  </span>  <span style="color:#00B050">\#\# Add the evidence</span>

<span style="color:#000000">  </span>  <span style="color:#000000">t\.val <\- t\.vals\[miniACED\.data\[Student\.row\,itask\]\] </span>  <span style="color:#00B050">\#Decode integer</span>

<span style="color:#000000">  </span>  <span style="color:#000000">NodeFinding\(obs\[\[1\]\]\) <\- t\.val</span>

<span style="color:#8B8B8B">RNetica Quick Start</span>

# Loop Part 2: Capture Statistics

<span style="color:#00B050">\#\# Update the history</span>

<span style="color:#000000">  </span>  <span style="color:#000000">post <\- NodeBeliefs\(Student\.SMvars$SolveGeometricProblems\)</span>

<span style="color:#000000">  </span>  <span style="color:#000000">Student\.History <\- rbind\(Student\.History\,new=post\)</span>

<span style="color:#000000">  </span>  <span style="color:#000000">rownames\(Student\.History\)\[nrow\(Student\.History\)\] <\- paste\(tid\,t\.val\,sep="="\)</span>

<span style="color:#000000">  </span>  <span style="color:#00B050">\#\# Cleanup\, Delete EM and Absob Observables</span>

<span style="color:#000000">  </span>  <span style="color:#000000">DeleteNetwork\(EMnet\)</span>

<span style="color:#000000">  </span>  <span style="color:#00B050">\#\# AbsorbNodes\(obs\) \# Still broken</span>

<span style="color:#000000">\}</span>

<span style="color:#8B8B8B">RNetica Quick Start</span>

# Weight of Evidence

<span style="color:#000000">Good \(1985\)</span>

<span style="color:#000000"> _H_ </span>  <span style="color:#000000"> is binary hypothesis\, e\.g\.\, </span>  <span style="color:#000000"> _Proficiency_ </span>  <span style="color:#000000"> > </span>  <span style="color:#000000"> _Medium_ </span>

<span style="color:#000000"> _E_ </span>  <span style="color:#000000"> is evidence for hypothesis</span>

<span style="color:#000000">Weight of Evidence \(WOE\) is</span>

![](img/BNSession3a_RNetica5.png)

<span style="color:#8B8B8B">RNetica Quick Start</span>

# Conditional Weight of Evidence

<span style="color:#000000">Can define Conditional Weight of Evidence</span>

<span style="color:#000000">Nice Additive properties</span>

<span style="color:#000000">Order sensitive</span>

<span style="color:#000000">WOE Balance Sheet \(Madigan\, Mosurski & Almond\, 1997\)</span>

![](img/BNSession3a_RNetica6.png)

![](img/BNSession3a_RNetica7.png)

<span style="color:#8B8B8B">RNetica Quick Start</span>

# Weight of Evidence Balance Sheet

<span style="color:#00B050">\#\# Now examine scoring history</span>

<span style="color:#000000">head\(Student\.History\)</span>

<span style="color:#000000">woeBal\(Student\.History\,c\("High"\,"Medium"\)\,"Low"\,</span>

<span style="color:#000000">       </span>  <span style="color:#000000">title=paste\("Evidence Balance Sheet for "\,                      </span>

<span style="color:#000000">       </span>  <span style="color:#000000">rownames\(miniACED\.data\)\[Student\.row\]\)\)</span>

<span style="color:#00B050">\#\# More ways to display scores</span>

<span style="color:#000000">help\(CPTtools\)</span>

<span style="color:#8B8B8B">RNetica Quick Start</span>

