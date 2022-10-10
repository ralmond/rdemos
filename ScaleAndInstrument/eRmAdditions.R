## This is an attempt to port the Kidmap graph type from ConstructMap
## to the eRm package.
## RGA
library(eRm)

## extracts a full theta table along with standard errors for all of
## the items.  Basically, add a theta column to the ppar$theta.table
## argument.
theta <- function(model) {
  lvar <- person.parameter(model)
  result <- lvar$theta.table
  names(result)[1] <- "theta"           #It is a latent variable, not
                                        #a parameter!
  max.se <- do.call(max,c(lapply(lvar$se.theta,max,na.rm=TRUE),
                          na.rm=TRUE))
  result$se <- rep(max.se,nrow(result))
  for (mpat in names(lvar$se.theta)) {
    result[names(lvar$se.theta[[mpat]]),"se"] <- lvar$se.theta[[mpat]]
  }
  result
}

## This recasts a PC data matrix as a matrix of threshold indicators,
## i.e., it expands to a vector of 0/1 indicators corresponding to the
## non-zero levels.  In other words, a 0,1,2 partial credit itme
## will expand to 2 columns and a 0,1,2,3 partial credit to 3 columns
## &c.
extendX <- function (X) {
  do.call("cbind",
          lapply(as.data.frame(X),
                 function (col) {
                   ma <- max(col,na.rm=TRUE)
                   matrix(as.numeric(outer(col,1:ma,">=")),
                          ncol=ma)      #Why does as.numeric drop the
                                        #dim attribute?
                 }))
}

## eRm "helpfully" adds beta to the front of the name of every
## parameter.  Need to undo this.
debeta <- function (pnames) sub("beta ","",pnames)


## This draws a kidmap, a map showing items right and wrong for a
## particular student.
##  itemDat -- raw person by item matrix
## model -- output of RM or similar command
## kid -- an expression which selects a single row of the itemDat
## matrix.
## itemSubset -- an expression which selects a number of coeficients
##  Note that for RSM and PCM, this might have slightly unexpected
##  results (especially PCM, with unequal number of categories)
## itemlabs -- a character vector of the same length selected
## coefficients giving display names for items.
## kidlab -- label for the theta value.
## rlcol, crcol -- color for the reference (theta) line and region.
## pcol, pch -- ploting symbols for the points.
## xlab, ... additional arguments for the plot function.

kidmap <- function (model,kid,itemSubset=1:ncol(model$X),
                    itemlabs=debeta(names(coef(model))[itemSubset]),
                    kidlab="Theta",xlab="",
                    rlcol="slateblue4", crcol = "slateblue1",
                    pcol="black",pch=1,
                    ...) {
  ## calculate 95% interval for score
  kidid <- row.names(model$X)[kid]
  thetas <- theta(model)
  theta.mean <- thetas[kid,"theta"]
  theta.lb <- theta.mean - 2*thetas[kid,"se"]
  theta.ub <- theta.mean + 2*thetas[kid,"se"]

  ## extract the beta parameters
  beta <- -coef(model)
  ## Extend the X matrix to give 0/1 indicators for each level.
  exX <- extendX(model$X)
  colnames(exX) <- names(beta)
  ## Select the subset we will use
  beta <- beta[itemSubset]
  datvec <- exX[kid,itemSubset]

  ## Graph Frame
  plot(datvec,beta,type="n",xlim=c(-2,3),xaxt="n",xlab=xlab,...)
  axis(1,at=c(-1,2),c("Not achieved","Achieved"),tick=FALSE)

  ## reference line for person
  polygon(c(-3,4,4,-3),c(theta.lb,theta.lb,theta.ub,theta.ub),
          col=crcol,border=NA)
  abline(h=theta.mean,col=rlcol)
  text(-1.5,theta.mean,kidlab,pos=3,col=rlcol)

  ## Data points and labels
  if (length(pcol)==2) {
    pcol <- pcol[datvec+1]
  }
  points(datvec,beta,pch=pch,col=pcol)
  text(datvec,beta,itemlabs,col=pcol,
       pos=2+2*datvec,adj=c(0,-1+2*datvec))

  invisible(datvec)

}


plotPImap2 <- function (object, item.subset = "all", sorted = FALSE, main = "Person-Item Map",
          latdim = "Latent Dimension", pplabel = "Person\nParameter\nDistribution",
          cex.gen = 0.7, xrange = NULL, warn.ord = TRUE, warn.ord.colour = "black",
          irug = TRUE, pp = NULL, ppdcol="red")
{
  def.par <- par(no.readonly = TRUE)
  if ((object$model == "LLTM") || (object$model == "LRSM") ||
        (object$model == "LPCM"))
    stop("Item-Person Map are computed only for RM, RSM, and PCM!")
  if (object$model == "RM" || max(object$X, na.rm = TRUE) <
        2) {
    dRm <- TRUE
    threshtable <- cbind(object$betapar, object$betapar) *
      -1
    rownames(threshtable) <- substring(rownames(threshtable),
                                       first = 6, last = 9999)
  }
  else {
    dRm <- FALSE
    threshtable <- thresholds(object)$threshtable[[1]]
  }
  tr <- as.matrix(threshtable)
  if (is.character(item.subset)) {
    if (length(item.subset) > 1 && all(item.subset %in% rownames(threshtable)))
      tr <- tr[item.subset, ]
    else if (length(item.subset) != 1 || !(item.subset ==
                                             "all"))
      stop("item.subset misspecified. Use 'all' or vector of at least two valid item indices/names.")
  }
  else {
    if (length(item.subset) > 1 && all(item.subset %in% 1:nrow(tr)))
      tr <- tr[item.subset, ]
    else stop("item.subset misspecified. Use 'all' or vector of at least two valid item indices/names.")
  }
  if (sorted)
    tr <- tr[order(tr[, 1], decreasing = FALSE), ]
  loc <- as.matrix(tr[, 1])
  tr <- as.matrix(tr[, -1])
  if (is.null(pp))
    suppressWarnings(pp <- person.parameter(object))
  else if (class(pp) != "ppar" || !identical(pp$X, object$X))
    stop("pp is not a person.parameter object which matches the main Rasch data object!")
  theta <- unlist(pp$thetapar)
  tt <- table(theta)
  ttx <- as.numeric(names(tt))
  yrange <- c(0, nrow(tr) + 1)
  if (is.null(xrange))
    xrange <- range(c(tr, theta), na.rm = T)
  nf <- layout(matrix(c(2, 1), 2, 1, byrow = TRUE), heights = c(1,
                                                                3), T)
  par(mar = c(2.5, 4, 0, 1))
  plot(xrange, yrange, xlim = xrange, ylim = yrange, main = "",
       ylab = "", type = "n", yaxt = "n", xaxt = "n")
  axis(2, at = 1:nrow(tr), labels = rev(rownames(tr)), las = 2,
       cex.axis = cex.gen)
  axis(1, at = seq(floor(xrange[1]), ceiling(xrange[2])), cex.axis = cex.gen,
       padj = -1.5)
  mtext(latdim, 1, 1.2, cex = cex.gen + 0.1)
  if (irug == TRUE) {
    y.offset <- nrow(tr) * 0.0275
    tr.rug <- as.numeric(tr)
    if (any(is.na(tr.rug)))
      tr.rug <- tr.rug[-which(is.na(tr.rug))]
    segments(tr.rug, rep(yrange[2], length(tr.rug)) + y.offset,
             tr.rug, rep(yrange[2], length(tr.rug)) + 100)
  }
  warn <- rep(" ", nrow(tr))
  for (j in 1:nrow(tr)) {
    i <- nrow(tr) + 1 - j
    assign("trpoints", tr[i, !is.na(tr[i, ])])
    npnts <- length(trpoints)
    if (!dRm && !all(sort(trpoints) == trpoints))
      ptcol = warn.ord.colour
    else ptcol = "black"
    if (npnts > 1)
      points(sort(trpoints), rep(j, npnts), type = "b",
             cex = 1, col = ptcol)
    if (dRm) {
      lines(xrange * 1.5, rep(j, 2), lty = "dotted")
    }
    else {
      if (npnts > 1)
        text(sort(trpoints), rep(j, npnts), (1:npnts)[order(trpoints)],
             cex = cex.gen, pos = 1, col = ptcol)
      if (!all(sort(trpoints) == trpoints))
        warn[j] <- "*"
    }
    points(loc[i], j, pch = 20, cex = 1.5, col = ptcol)
  }
  if (warn.ord)
    axis(4, at = 1:nrow(tr), tick = FALSE, labels = warn,
         hadj = 2.5, padj = 0.7, las = 2)
  par(mar = c(0, 4, 3, 1))
  plot(ttx, tt, type = "n", main = main, axes = FALSE, ylab = "",
       xlim = xrange, ylim = c(0, max(tt)))
  points(ttx, tt, type = "h", col = ppdcol, lend = 2, lwd = 5)
  mtext(pplabel, 2, 0.5, las = 2, cex = cex.gen)
  box()
  par(def.par)
}

# plotPImap2(midterm.pcm, ppdcol="blue")


## WrongMap.R
## Russell Almond, FSU  almond@acm.org; ralmond@fsu.edu
## Copyright 2015 Artistic License 2.0

## This is a light weight version of the Wright Map (also known as the
## Person-Item Map) which does not use the IRT assumption.  Just a
## rough normal assumption for abilities.  It probably works best for
## 26-99 observations (more than that, it is probably ok to do
## scaling, fewer, and we don't really have enough data points for a
## stable estimate of the population distribution or the item
## difficulties.

## In particular, person abilities are calculated by simply
## normalizing the total score.  The item difficulties are calculated
## by the transformation qnorm(1-p), where p is the proportion of
## persons recieving that score.  For partial credit items, the
## difficulties are bases on p1, p2, p3 ... the (cumulative) probability of
## achieving each of score points.

## x is assumed to be a numeric matrix with columns represneting items
## and rows persons.  The values should be the scores, so that
## rowSums(x) gives the score on the assessment.


wrongMap <- function (x, item.subset =1:ncol(x), scores=rowSums(x),
                      itemLabs=NULL, abilLab="Ability",
                      cex.gen=0.7, xrange=NULL, prop = .2,
                      histOpt=list(col="red"),
                      dotOpt=list(),
                      itemPch=19, itemCol="black",
                      statePch=1, stateCol="black",
                      heights=c(1,3),stateLabs=TRUE,
                      main=paste("Difficulty-z-score plot of",
                        deparse(substitute(x)))) {
  if (is.null(itemLabs)) {
    if (is.null(colnames(x))) {
      itemLabs <- paste("Q",item.subset)
    } else {
      itemLabs <- colnames(x)[item.subset]
    }
  }

  ## Compute ability distribution
  z <- (scores-mean(scores))/sd(scores)

  ## Compute item difficulties
  J <- length(item.subset)
  diffs <- vector("list",J)
  Snames <- vector("list",J)
  Items <- 1:J
  Idiffs <- rep(NA,J)
  Nstates <- rep(NA,J)
  names(diffs) <- itemLabs
  names(Idiffs) <- itemLabs
  for (item in item.subset) {
    tab <- cumsum(rev(table(as.ordered(x[,item]))))
    ms <- max(tab)
    qtab <- qnorm((ms-tab)/ms)
    diffs[[item]] <- qtab[is.finite(qtab)]
    Snames[[item]] <- names(qtab)[is.finite(qtab)]
    Nstates[item] <- sum(is.finite(qtab))
    Idiffs[item] <- qnorm(1-mean(x[,item],na.rm=TRUE)/max(x[,item],na.rm=TRUE))
  }
  alldiffs <- do.call("c",diffs)
  allitems <- rep(1:J,Nstates)
  allnames <- do.call("c",Snames)

  ## Now start on the plot
  if (is.null(xrange)) {
    allzd <- c(z,alldiffs,Idiffs)
    xrange <- range(allzd[is.finite(allzd)],na.rm=TRUE)*(1+prop)
  }

  oldpar <- par(no.readonly = TRUE)
  tryCatch({
    layout(matrix(c(1,2),2,1,byrow=TRUE),heights=heights)
    par(mar = c(3.1, 4.1, 3.1, 2.1))
    do.call("hist", c(list(x=z,xlab="",xlim=xrange,main=main),
                      histOpt))
    par(mar = c(3.1, 4.1, 0.1, 2.1))
    do.call("dotchart",c(list(x=Idiffs,pch=itemPch,col=itemCol,
                              xlim=xrange),
                         dotOpt))
    points(alldiffs,allitems,pch=statePch,col=stateCol)
    if(stateLabs)
      text(alldiffs,allitems,allnames,col=stateCol,pos=4)
  },
           finally=par(oldpar))
}


## WrongMap.R
## Russell Almond, FSU  almond@acm.org; ralmond@fsu.edu
## Copyright 2015 Artistic License 2.0

## This is a light weight version of the Wright Map (also known as the
## Person-Item Map) which does not use the IRT assumption.  Just a
## rough normal assumption for abilities.  It probably works best for
## 26-99 observations (more than that, it is probably ok to do
## scaling, fewer, and we don't really have enough data points for a
## stable estimate of the population distribution or the item
## difficulties.

## In particular, person abilities are calculated by simply
## normalizing the total score.  The item difficulties are calculated
## by the transformation qnorm(1-p), where p is the proportion of
## persons recieving that score.  For partial credit items, the
## difficulties are bases on p1, p2, p3 ... the (cumulative) probability of
## achieving each of score points.

## x is assumed to be a numeric matrix with columns represneting items
## and rows persons.  The values should be the scores, so that
## rowSums(x) gives the score on the assessment.


wrongMapL <- function (x, item.subset =1:ncol(x), scores=rowSums(x),
                      itemLabs=NULL, abilLab="Ability",
                      cex.gen=0.7, xrange=NULL, prop = .04,
                      histOpt=list(col="red"),
                      itemPch=19, itemCol="black",
                      statePch=1, stateCol="black",
                      ygrid=5,xgrid=.5,...) {
  if (is.null(itemLabs)) {
    if (is.null(colnames(x))) {
      itemLabs <- paste("Q",item.subset)
    } else {
      itemLabs <- colnames(x)[item.subset]
    }
  }

  ## Compute ability distribution
  z <- (scores-mean(scores))/sd(scores)

  ## Compute item difficulties
  J <- length(item.subset)
  diffs <- vector("list",J)
  Snames <- vector("list",J)
  Idiffs <- rep(NA,J)
  Nstates <- rep(NA,J)
  names(diffs) <- itemLabs
  names(Idiffs) <- itemLabs
  for (item in item.subset) {
    tab <- cumsum(rev(table(as.ordered(x[,item]))))
    ms <- max(tab)
    qtab <- qnorm((ms-tab)/ms)
    diffs[[item]] <- qtab[is.finite(qtab)]
    Snames[[item]] <- names(qtab)[is.finite(qtab)]
    Nstates[item] <- sum(is.finite(qtab))
    Idiffs[item] <- qnorm(1-mean(x[,item],na.rm=TRUE)/max(x[,item],na.rm=TRUE))
  }
  alldiffs <- do.call("c",diffs)
  allitems <- rep(1:J,Nstates)
  allnames <- do.call("c",Snames)

  ## Remove all right/all wrong items.
  Items <- (1:J)[is.finite(Idiffs)]
  Idiffs <- Idiffs[is.finite(Idiffs)]

  diff.frame <- data.frame(Difficulty=c(Idiffs,alldiffs),
                           number = J-c(Items,allitems),
                           Item=itemLabs[c(Items,allitems)],
                           pch=rep(c(itemPch,statePch),
                                   c(length(Items),length(allitems))),
                           col=rep(c(itemCol,stateCol),
                                   c(length(Items),length(allitems))))

  head(diff.frame)
  ## Now start on the plot
  if (is.null(xrange)) {
    xrange <- range(c(z,alldiffs,Idiffs),na.rm=TRUE)
  }
  print(do.call("histogram", c(list(x=z,endpoints=xrange,
                                    xlab=abilLab,xlim=xrange*(1+prop)),
                               histOpt)),
        position=c(0,.68,1,1),more=TRUE,newpage=TRUE)

  ## xy <- xyplot(item~Ability,diff.frame,
  ##              panel=function(...) {
  ##                panel.xyplot(...,pch=diff.frame$pch,col=diff.frame$col)
  ##                JJ <- seq(J,0,-ygrid)
  ##                lsegments(rep(xrange[1],length(JJ)),JJ,
  ##                          rep(xrange[2],length(JJ)),JJ,
  ##                          col="lightGray")
  ##                XX <- seq(xrange[1],xrange[2],xgrid)
  ##                lsegments(XX,rep(-2,length(XX)),
  ##                          XX,rep(J+2,length(XX)),
  ##                          col="lightGray")
  ##              }, xlim=xrange,xlab=abilLab,...)
  xy <- dotplot(Item~Difficulty,diff.frame,
                pch=diff.frame$pch,col=diff.frame$col,
                xlim=xrange*(1+prop),...)
  print(xy,position=c(0,0,1,.7))
}



