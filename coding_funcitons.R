### software carpentry 
######### function types

### 1. Standard function, variables are passed to the function by the user.
f <- function(a){a<-a+1; return(a)}
f(a)

#### global function - no argument is passed to the function directly, 
#### the function uses x from the global environment (main code)

g <- function(){x <- x+1; return(x)}
g()

#### if you define the environment this type of function will reassign the global 
#### value (be careful with this one)
updatex <- function(e, newx){assign("x", newx, envir = e)}
updatex(environment(),10)

#### to check time taken by the code

system.time()

e.g. 

n <- 1000
f1 <- function(n){l <- list(); for(i in seq_len(n)) l[i] <- seq(i); return (l)}
f2 <- function(n){l <- vector("list", length = n); for(i in seq_len(n)) l[[i]] <- seq(i); return(l)}
f3 <- function(n){lapply(seq_len(n),seq)}                                                                          
  
benchmark(f1(n), f2(n),f3(n), columns = c("test", "replications", "elapsed", "relative"),
                replications = 100)

#### test pushing

