### Coin flip 1.R
### Satwinder Singh
### What's the probability of getting  1 head in 4 coin flips?
###
### Random experiment: Flip 4 coins
### Event: 1 head

#####################################
### The trial
#####################################
trial <- sample(0:1, 4, replace=TRUE)

######################################
### Success?
######################################
if (sum(trial)==1) 1 else 0

######################################
### Repeat
######################################
n <- 10000   ### Number of iterations
simlist <- replicate(n, 0) ## Initialize list with 0's
for (i in 1:n)
{
	trial <- sample(0:1, 4, replace=TRUE)
	success <- if (sum(trial)==1) 1 else 0
	simlist[i] <- success
}

### Simulated result
mean(simlist)