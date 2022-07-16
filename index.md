---
title       : Developing Data Product Week 4 Project
subtitle    : 
author      : Jamin
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [mathjax]            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---


## Generate means from exponential distribution

```r
means <- apply(matrix(rexp(40000, 0.2),nrow = t, ncol = n),1, mean)
g <- ggplot(data.frame(means=means), aes(x = means))
g <- g + geom_histogram(binwidth = 0.3,aes(y=..density..))
g
```

---
## Histogram

![plot of chunk unnamed-chunk-3](assets/fig/unnamed-chunk-3-1.png)

---
## Solving quadratic equation
$$ ax^2+bx+c=0 \\ x = \frac{-b\pm\sqrt{b^2-4ac}}{2a}$$

---
## Solving quadratic equation with R

```r
solvequad <- function(a,b,c){
    (-b+c(1,-1)*(b^2-4*a*c)^0.5)/(2*a)
}
solvequad(1,5,6)
```

```
## [1] -2 -3
```
